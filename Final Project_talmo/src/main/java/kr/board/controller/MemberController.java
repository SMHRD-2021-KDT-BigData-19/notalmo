package kr.board.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.entity.Member;
import kr.board.mapper.MemberMapper;

@Controller
public class MemberController {
	@Autowired
	private MemberMapper mmapper;
	
	// 회원가입
	@PostMapping("/Signup.do")
	public String memSingup(Member mvo) {
		mmapper.memberSignup(mvo);
		System.out.println("회원가입 완료");
		return "redirect:/MainPage.do";
	}

	// 로그인
	@PostMapping("/Login.do")
	public String memLogin(Member mvo, HttpSession session) {
		
		Member loginMember = mmapper.memberLogin(mvo);
		// 로그인이 가능할 때만 세션에 저장
		// HttpSession session = request.getSession();
		// request 사용하려면 매개변수 HttpServletRequest request

		if (loginMember != null) {
			session.setAttribute("loginMember", loginMember);
			System.out.println("로그인 성공");
			System.out.println(loginMember);
		}
		else {
			System.out.println("로그인 실패");
		}

		// 로그인하고 나면 basic.jsp실행
		// boardcontroller에서 만듦

		System.out.println(session);
		return "redirect:/MainPage.do";
	}
	
	// 회원수정
	@PostMapping("/Update.do")
	public String memUpdate(Member mvo) {
		mmapper.memberUpdate(mvo);
		System.out.println("회원수정 완료");
		return "redirect:/MyPage.do";
	}

	// 로그아웃
	@RequestMapping("/Logout.do")
	public String memLogout(HttpSession session) {
		session.removeAttribute("loginMember");
		System.out.println("로그아웃 완료");
		return "redirect:/MainPage.do";
	}
}
