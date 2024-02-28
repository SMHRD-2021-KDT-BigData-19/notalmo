package kr.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.board.entity.PostContentDTO;
import kr.board.entity.PostListGetDTO;
import kr.board.mapper.CommunityMapper;

@Controller
public class PageController {
	@Autowired
	private CommunityMapper cmapper;
	// 기존에 사용했던 생성자 주입보다 조금 더 유연성이 높은 의존성 주입(Dependency Injection)

	// boardAjaxMain.do 요청을 받아서 basic.jsp를 실행시키는 메소드 작성
	// url 가져오는 방식을 기본으로 get방식 사용

	// 메인페이지 요청
	@GetMapping("/MainPage.do")
	public String MainPage() {
		// return의 용도
		// 1) jsp이름 돌려주기
		// 2) redirect:/ 다른요청으로 보내기
		return "MainPage";
	}

	// 로그인 페이지 요청
	@GetMapping("/LoginPage.do")
	public String LoginPage() {
		return "Login";
	}

	// 회원가입 페이지 요청
	@GetMapping("/SignupPage.do")
	public String SignupPage() {
		return "SignUp";
	}
	
	// 회원수정 페이지 요청
	@GetMapping("/UpdatePage.do")
	public String UpdatePage() {
		return "UpdatePage";
	}
	
	// 비번수정 페이지 요청
	@GetMapping("/PwUpdatePage.do")
	public String PwUpdatePage() {
		return "PwUpdatePage";
	}
	
	// 회원탈퇴 페이지 요청
	@GetMapping("/DeletePage.do")
	public String DeletePage() {
		return "Delete";
	}

	// 탈모 진단 전 안내 페이지 요청
	@GetMapping("/TalmoTestStartPage.do")
	public String TalmoTestStartPage() {
		return "TalmoTestStartPage";
	}
	
	// 탈모 진단 페이지 요청
	@GetMapping("/TalmoTest.do")
	public String TalmoTestPage() {
		return "TalmoTest";
	}

	// 탈모 진단 후 결과 페이지 요청
	@GetMapping("/TalmoTestResultPage.do")
	public String TalmoTestResultPage() {
		return "TalmoTestResultPage";
	}

	// 마이페이지 요청
	@GetMapping("/MyPage.do")
	public String MyPage() {
		return "MyPage";
	}

	// 커뮤니티 페이지 요청
	@GetMapping("/CommunityPage.do")
	public String CommunityPage(Model model) {
		List<PostListGetDTO> PostList = cmapper.PostGetList();
		
		// request.setAttribute("이름", 데이터);
		model.addAttribute("PostList", PostList);
				
		return "Community";
	}

	// 제품추천 페이지 요청
	@GetMapping("/ProductPage.do")
	public String ProductPage() {
		return "Product";
	}

	// 병원 페이지 요청
	@GetMapping("/HospitalPage.do")
	public String HospitalPage() {
		return "Hospital";
	}

//	// 게시글확인 페이지 요청
//	@GetMapping("/CommunityViewPage.do")
//	public String CommunityViewPage() {
//		return "CommunityView";
//	}

	// 게시글등록 페이지 요청
	@GetMapping("/PostUploadPage.do")
	public String PostUploadPage() {
		return "PostUpload";
	}
	
	@GetMapping("xxxx.do")
	public String xxxx() {
		return "xxxx";
	}
	
	@GetMapping("/Jaju.do")
	public String Jaju() {
		return "Jaju";
	}

}