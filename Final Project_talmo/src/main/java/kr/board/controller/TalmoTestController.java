package kr.board.controller;

import kr.board.entity.TalmoTestDTO;
import kr.board.mapper.TalmoTestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class TalmoTestController {

    @Autowired
    private TalmoTestMapper talmoTestMapper;


    @PostMapping("/TalmoTestResultPage.do/{user_id}")
    public void TalmoTestResultPage(@PathVariable("user_id") int user_id, MultipartFile file) throws IOException {
        
        System.out.println(user_id);

        // 이미지 파일 이름
        String fileRealName = file.getOriginalFilename();
        System.out.println(fileRealName);

        // 파이썬 서버의 주소로 대체
        String pythonServerUrl = "http://127.0.0.1:5000/upload";

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.MULTIPART_FORM_DATA);

        MultiValueMap<String, Object> body = new LinkedMultiValueMap<>();
        body.add("file", new ByteArrayResource(file.getBytes()) {
            @Override
            public String getFilename() {
                return fileRealName;
            }
        });

        HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(body, headers);

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> response = restTemplate.postForEntity(
                pythonServerUrl,
                requestEntity,
                String.class
        );
        
        System.out.println(response.getBody());

//        // 이미지 파일 서버에 저장
//        for(int i = 0; i<talmoList.size(); i++) {
//            String talmoFileRealName = talmoList.get(i).getOriginalFilename();
//
//            System.out.println("파일명 :" + talmoFileRealName);
//
//            // 폴더가 존재하지 않으면 생성
//            File talmoFolder = new File(talmoUploadFolder);
//            if (!talmoFolder.exists()) {
//                talmoFolder.mkdirs();
//            }
//
//            File talmoSaveFile = new File(talmoUploadFolder + "\\" + talmoFileRealName);
//            try {
//                talmoList.get(i).transferTo(talmoSaveFile);
//            } catch (IllegalStateException | IOException e) {
//                e.printStackTrace();
//            }
//
//            // 테스트 이미지 DB에 저장
//            // result_id = result_id, folder = uploadFolder, file_name = fileRealName
//            if (i == 0) {
//                talmoTestDTO.setFrontpath(talmoUploadFolder + "\\" + talmoFileRealName);
//            } else if (i == 1) {
//                talmoTestDTO.setToppath(talmoUploadFolder + "\\" + talmoFileRealName);
//            }
//        }
//
//        // DB에 이미지 경로 업데이트
//        talmoTestMapper.insert(talmoTestDTO);
    }
}