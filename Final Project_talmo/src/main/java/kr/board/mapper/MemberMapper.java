package kr.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.Member;

@Mapper
public interface MemberMapper {
	
	public void memberSignup(Member mvo);
	public Member memberLogin(Member mvo);
	public void memberUpdate(Member mvo);
	public void memberPwUpdate(Member mvo);
	public void memberDelete(Member mvo);
	
}
