package kr.board.controller;

import kr.board.entity.TalmoTestDTO;
import kr.board.mapper.TalmoTestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class TalmoTestController {

    @Autowired
    private TalmoTestMapper talmoTestMapper;


    
    
    @PostMapping("/TalmoTestResultPage.do")
    public void TalmoTestResultPage(TalmoTestDTO talmoTestDTO, MultipartHttpServletRequest frontpath2) {
    	System.out.println("SSSS");
        // user_id, frontpath, toppath, selfcheck DB에 업로드
        talmoTestMapper.insert(talmoTestDTO);

        System.out.println("새로 생성된 result_id: " + talmoTestDTO.getResult_id());
        System.out.println(talmoTestDTO);

        int result_id = talmoTestDTO.getResult_id();

        // 업로드한 이미지 파일을 서버에 저장 할 경로
        String talmoUploadFolder = "C:\\talmo\\test2\\" + result_id;

        // 이미지 파일 리스트에 저장
        List<MultipartFile> talmoList = frontpath2.getFiles("talmoImg");

        // 이미지 파일 서버에 저장
        for(int i = 0; i<talmoList.size(); i++) {
            String talmoFileRealName = talmoList.get(i).getOriginalFilename();

            System.out.println("파일명 :" + talmoFileRealName);

            // 폴더가 존재하지 않으면 생성
            File talmoFolder = new File(talmoUploadFolder);
            if (!talmoFolder.exists()) {
                talmoFolder.mkdirs();
            }

            File talmoSaveFile = new File(talmoUploadFolder + "\\" + talmoFileRealName);
            try {
                talmoList.get(i).transferTo(talmoSaveFile);
            } catch (IllegalStateException | IOException e) {
                e.printStackTrace();
            }

            // 테스트 이미지 DB에 저장
            // result_id = result_id, folder = uploadFolder, file_name = fileRealName
            if (i == 0) {
                talmoTestDTO.setFrontpath(talmoUploadFolder + "\\" + talmoFileRealName);
            } else if (i == 1) {
                talmoTestDTO.setToppath(talmoUploadFolder + "\\" + talmoFileRealName);
            }
        }

        // DB에 이미지 경로 업데이트
        talmoTestMapper.insert(talmoTestDTO);
    }
}