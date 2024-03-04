package kr.board.entity;

public class TestImageDTO {
	
	private int picture_id;
	private int result_id;
	private String folder;
	private String file_name;
	private String create_date;
	
	
	public TestImageDTO(int result_id, String folder, String file_name) {
		super();
		this.result_id = result_id;
		this.folder = folder;
		this.file_name = file_name;
	}
	
	public int getPicture_id() {
		return picture_id;
	}
	public void setPicture_id(int picture_id) {
		this.picture_id = picture_id;
	}
	public int getResult_id() {
		return result_id;
	}
	public void setResult_id(int result_id) {
		this.result_id = result_id;
	}
	public String getFolder() {
		return folder;
	}
	public void setFolder(String folder) {
		this.folder = folder;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	@Override
	public String toString() {
		return "TestImageDTO [picture_id=" + picture_id + ", result_id=" + result_id + ", folder=" + folder
				+ ", file_name=" + file_name + ", create_date=" + create_date + "]";
	}
	
	
	
}