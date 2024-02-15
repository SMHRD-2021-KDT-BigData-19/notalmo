package kr.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.PostUploadDAO;


@Mapper
public interface CommunityMapper {
	
	public void PostUploadmapper(PostUploadDAO vo);
}
