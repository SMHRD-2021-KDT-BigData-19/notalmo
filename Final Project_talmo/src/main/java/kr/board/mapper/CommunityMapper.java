package kr.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.ImageDAO;
import kr.board.entity.PostUploadDAO;


@Mapper
public interface CommunityMapper {
	
	public void PostUploadmapper(PostUploadDAO vo);
	public void PostImgUploadmapper(ImageDAO vo);
	
}
