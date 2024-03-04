package kr.board.mapper;

import kr.board.entity.TalmoResultDTO;
import kr.board.entity.TestImageDTO;


public interface TalmoTestMapper {
	public void TalmoResult(TalmoResultDTO tdto);
	public void TestImgUpload(TestImageDTO timgdto);
}