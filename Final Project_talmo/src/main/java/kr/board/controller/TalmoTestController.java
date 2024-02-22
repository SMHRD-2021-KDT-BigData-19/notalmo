package kr.board.controller;

import kr.board.entity.TalmoTestDTO;
import kr.board.mapper.TalmoTestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TalmoTestController {

    @Autowired
    private TalmoTestMapper talmoTestMapper;

    @PostMapping("/upload")
    public String upload(TalmoTestDTO talmoTestDTO) {
        // form 데이터를 받아 TalmoTestDTO 객체를 생성합니다.

        // TalmoTestDTO 객체를 데이터베이스에 저장합니다.
        talmoTestMapper.insert(talmoTestDTO);

        // 저장이 완료되면, 사용자를 다른 페이지로 리다이렉트합니다.
        return "redirect:/nextPage";
    }
    
}