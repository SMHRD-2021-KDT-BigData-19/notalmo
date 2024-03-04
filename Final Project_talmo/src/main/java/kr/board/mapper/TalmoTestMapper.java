package kr.board.mapper;

import java.util.List;

import kr.board.entity.TalmoResultDTO;
import kr.board.entity.TestImageDTO;
import kr.board.entity.TestListGetDTO;


public interface TalmoTestMapper {
	public void TalmoResult(TalmoResultDTO tdto);
	public void TestImgUpload(TestImageDTO timgdto);
	public List<TestListGetDTO> MyTestGetList(int user_id);
}