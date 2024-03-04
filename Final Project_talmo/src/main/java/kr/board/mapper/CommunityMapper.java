package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

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
	public void PostDelete(int post_id);
	public void CommentDelete(int comment_id);
	public List<PostListGetDTO> MyPostGetList(int user_id);
	public List<PostListGetDTO> MainPagePostList();

	// 게시글 조회수 카운트
	@Update("UPDATE posts SET view_cnt=view_cnt+1 WHERE post_id=#{post_id}")
	public void ViewCnt(int post_id);
	
	// 게시물 신고 카운트
	@Update("UPDATE posts SET report_cnt=report_cnt+1 WHERE post_id=#{post_id}")
	public void PostReport(int post_id);
	
	// 댓글 신고 카운트
	@Update("UPDATE comments SET report_cnt=report_cnt+1 WHERE comment_id=#{comment_id}")
	public void CommentReport(int comment_id);
	
}
