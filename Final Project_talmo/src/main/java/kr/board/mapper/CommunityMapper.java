package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.PostContentDTO;
import kr.board.entity.PostImageDTO;


@Mapper
public interface CommunityMapper {
	
	public void PostUploadmapper(PostContentDTO vo);
	public void PostImgUploadmapper(PostImageDTO Ivo);
	public List<PostContentDTO> PostGetList();
	public PostContentDTO CommunityText(int post_id);
	public PostImageDTO CommunityImg(int post_id);
	
}
