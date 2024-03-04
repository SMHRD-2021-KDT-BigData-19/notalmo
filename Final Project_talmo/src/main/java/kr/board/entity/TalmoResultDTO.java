package kr.board.entity;

public class TalmoResultDTO {
	
	public int result_id;
	public int user_id;
	public String result;
	public String create_date;
	
	public TalmoResultDTO(int user_id, String result) {
		super();
		this.user_id = user_id;
		this.result = result;
	}
	
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
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	
	@Override
	public String toString() {
		return "TalmoResultDTO [result_id=" + result_id + ", user_id=" + user_id + ", result=" + result
				+ ", create_date=" + create_date + "]";
	}
	
}