package kr.board.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.board.entity.CImgGetDTO;
import kr.board.entity.CTextGetDTO;
import kr.board.entity.CommentDTO;
import kr.board.entity.PostContentDTO;
import kr.board.entity.PostImageDTO;
import kr.board.entity.PostListGetDTO;
import kr.board.mapper.CommunityMapper;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityMapper cmapper;
	

	// 게시물 업로드 요청
	@PostMapping("/PostUpload.do")
	public String PostUpload(PostContentDTO vo, MultipartHttpServletRequest postImg) {
		
		// user_id, category, title, content DB에 업로드
		cmapper.PostUploadmapper(vo);
		
		System.out.println("새로 생성된 post_id: " + vo.getPost_id());
		System.out.println("테스트 실행");
		System.out.println(vo);
		
		int post_id = vo.getPost_id();
		
		// 업로드한 이미지 파일을 서버에 저장 할 경로
		String uploadFolder = "C:\\notalmo\\post\\" + post_id;
		
		// 이미지 파일 리스트에 저장
		List<MultipartFile> list = postImg.getFiles("postImg");
		
		// 이미지 파일 서버에 저장
		for(int i = 0; i<list.size(); i++) {
			String fileRealName = list.get(i).getOriginalFilename();
			
			System.out.println("파일명 :" + fileRealName);
			
			// 폴더가 존재하지 않으면 생성
			File folder = new File(uploadFolder);
	        if (!folder.exists()) {
	            folder.mkdirs();
	        }
			
			File saveFile = new File(uploadFolder + "\\" + fileRealName);
			try {
				list.get(i).transferTo(saveFile);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			// 게시물 이미지 DB에 저장
			// picture_id = i+1, post_id = post_id, folder = uploadFolder, file_name = fileRealName
			PostImageDTO Ivo = new PostImageDTO(post_id, uploadFolder, fileRealName);
			System.out.println(Ivo.toString());
			
			cmapper.PostImgUploadmapper(Ivo);
			
		}
		return "redirect:/CommunityPage.do";
	}
	
	// 커뮤니티 상세보기 요청
	@RequestMapping("/CommunityView.do/{post_id}")
	public String boardContent(@PathVariable("post_id") int post_id, Model model) {
		CTextGetDTO vo = cmapper.CTextGet(post_id);
		List<CImgGetDTO> Ivo = cmapper.CImgGet(post_id);
		List<CommentDTO> Cvo = cmapper.CommentGet(post_id);
		
		model.addAttribute("vo", vo);
		model.addAttribute("Ivo", Ivo);
		model.addAttribute("Cvo", Cvo);

		return "CommunityView";
	}
	
	// 댓글 DB 저장
	@PostMapping("/Comment.do")
	public @ResponseBody void Comment(CommentDTO Cvo) {
		cmapper.Comment(Cvo);
	}
	
	// 게시물 지우기
	@RequestMapping("/PostDelete.do/{post_id}")
	public String PostDelete(@PathVariable("post_id") int post_id) {
		cmapper.PostDelete(post_id);
		System.out.println("게시물 삭제 완료	");
		return "redirect:/CommunityPage.do";
	}
	
	// 댓글 지우기
	@RequestMapping("/CommentDelete.do/{comment_id}/{post_id}")
	public String CommentDelete(@PathVariable("comment_id") int comment_id, @PathVariable("post_id") int post_id) {
		cmapper.CommentDelete(comment_id);
		System.out.println("댓글 삭제 완료");
		return "redirect:/CommunityView.do/"+post_id;
	}
	
}
