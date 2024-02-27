package kr.board.controller;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.board.entity.HospitalDTO;

@Controller
public class HospitalController {
	
	String clientId = "4LIWA1dsAzfd5RCedIPF"; //애플리케이션 클라이언트 아이디
    String clientSecret = "u4T0rSV564"; //애플리케이션 클라이언트 시크릿

	// 병원 검색 요청
	@PostMapping("/HospitalSearch.do")
	public @ResponseBody void PostUpload(String query, Model model) {
		
		System.out.println("HospitalSearch.do에 들어왔습니다.");
		System.out.println("검색어: " + query);
		
        String text = null;
        try {
            text = URLEncoder.encode(query, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("검색어 인코딩 실패",e);
        }

        
        String apiURL = "https://openapi.naver.com/v1/search/local.json?query=" + text + "&display=10";
        
        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("X-Naver-Client-Id", clientId);
        requestHeaders.put("X-Naver-Client-Secret", clientSecret);
        String responseBody = get(apiURL,requestHeaders);
        
        System.out.println(responseBody);
        
        ObjectMapper objectMapper = new ObjectMapper();
        
        
        try {
            // JSON 문자열을 JsonNode로 파싱
            JsonNode jsonNode = objectMapper.readTree(responseBody);

            // "items" 배열에서 각 항목에 접근
            JsonNode items = jsonNode.get("items");
            for (JsonNode item : items) {
                String title = item.get("title").asText();
                String link = item.get("link").asText();
                String category = item.get("category").asText();
                String address = item.get("address").asText();
                String roadAddress = item.get("roadAddress").asText();
                
                HospitalDTO Hvo = new HospitalDTO(title,link,category,address,roadAddress);
                model.addAttribute("Hvo", Hvo);

                // 필요한 데이터를 여기에서 처리하거나 출력
                System.out.println("Title: " + title);
                System.out.println("Link: " + link);
                System.out.println("Category: " + category);
                System.out.println("Address: " + address);
                System.out.println("Road Address: " + roadAddress);
                System.out.println("------------------------");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
	}
	
	
	private static String get(String apiUrl, Map<String, String> requestHeaders){
        HttpURLConnection con = connect(apiUrl);
        try {
            con.setRequestMethod("GET");
            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
                con.setRequestProperty(header.getKey(), header.getValue());
            }


            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
                return readBody(con.getInputStream());
            } else { // 오류 발생
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
            con.disconnect();
        }
    }


    private static HttpURLConnection connect(String apiUrl){
        try {
            URL url = new URL(apiUrl);
            return (HttpURLConnection)url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
        }
    }


    private static String readBody(InputStream body){
        InputStreamReader streamReader = new InputStreamReader(body);


        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();


            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }


            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는 데 실패했습니다.", e);
        }
    }
	
}
