package kr.board.entity;

public class HospitalDTO {
	private String title;
	private String link;
	private String category;
	private String address;
	private String roadAddress;
	
	public HospitalDTO(String title, String link, String category, String address, String roadAddress) {
		super();
		this.title = title;
		this.link = link;
		this.category = category;
		this.address = address;
		this.roadAddress = roadAddress;
	}
	
}
