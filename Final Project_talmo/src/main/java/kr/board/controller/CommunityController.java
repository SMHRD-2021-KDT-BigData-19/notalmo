package kr.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import kr.board.entity.PostUploadDAO;
import kr.board.mapper.CommunityMapper;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityMapper cmapper;
	
	// 게시물 업로드 요청
	@PostMapping("/PostUpload.do")
	public void PostUpload(PostUploadDAO vo) {
		// title=XXX&content=XXX&writer=XXX 데이터 넘어옴
		cmapper.PostUploadmapper(vo);
	}
}
