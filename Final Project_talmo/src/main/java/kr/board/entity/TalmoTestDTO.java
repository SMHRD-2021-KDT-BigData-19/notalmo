package kr.board.entity;

public class TalmoTestDTO {
	
	public int result_id;
	public int user_id;
	public int result;
	public String create_date;
	public String frontpath;
	public String toppath;
	public int selfcheck;
	
	
	public int getResult_id() {
		return result_id;
	}
	public void setResult_id(int result_id) {
		this.result_id = result_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getFrontpath() {
		return frontpath;
	}
	public void setFrontpath(String frontpath) {
		this.frontpath = frontpath;
	}
	public String getToppath() {
		return toppath;
	}
	public void setToppath(String toppath) {
		this.toppath = toppath;
	}
	public int getSelfcheck() {
		return selfcheck;
	}
	public void setSelfcheck(int selfcheck) {
		this.selfcheck = selfcheck;
	}
	
	
	// TalmoTest에서 받아오는 데이터 임시 저장
	public void createTemp(int selfcheck, String frontpath, String toppath) {
	    this.selfcheck = selfcheck;
	    this.frontpath = frontpath;
	    this.toppath = toppath;
	}

	// 딥러닝 후 받아오는 정보 최종 저장
	public void update(int result, String createDate) {
	    this.result = result;
	    this.create_date = createDate;
	}
	
}