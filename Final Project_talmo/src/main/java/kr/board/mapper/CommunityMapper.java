package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.CImgGetDTO;
import kr.board.entity.CTextGetDTO;
import kr.board.entity.CommentDTO;
import kr.board.entity.PostContentDTO;
import kr.board.entity.PostImageDTO;
import kr.board.entity.PostListGetDTO;


@Mapper
public interface CommunityMapper {
	
	public void PostUploadmapper(PostContentDTO vo);
	public void PostImgUploadmapper(PostImageDTO Ivo);
	public List<PostListGetDTO> PostGetList();
	public CTextGetDTO CTextGet(int post_id);
	public List<CImgGetDTO> CImgGet(int post_id);
	public List<CommentDTO> CommentGet(int post_id);
	public void Comment(CommentDTO Cvo);
}
