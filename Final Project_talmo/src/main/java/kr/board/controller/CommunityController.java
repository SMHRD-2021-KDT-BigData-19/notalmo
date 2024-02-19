package kr.board.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.board.entity.PostUploadDAO;
import kr.board.entity.PostImageDTO;
import kr.board.mapper.CommunityMapper;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityMapper cmapper;

	// 게시물 업로드 요청
	@PostMapping("/PostUpload.do")
	public void PostUpload(PostUploadDAO vo, MultipartHttpServletRequest postImg) {
		
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
		
		
		
		
	}
}
