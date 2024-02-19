package kr.board.entity;

public class PostImageDTO {
	private int picture_id;
	private int post_id;
	private String folder;
	private String file_name;
	private String create_date;
	
	public PostImageDTO(int post_id, String folder, String file_name) {
		super();
		this.post_id = post_id;
		this.folder = folder;
		this.file_name = file_name;
	}
	
	public int getPicture_id() {
		return picture_id;
	}
	public void setPicture_id(int picture_id) {
		this.picture_id = picture_id;
	}
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
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
		return "ImageDTO [post_id=" + post_id + ", folder="
				+ folder + ", file_name=" + file_name + ", create_date=" + create_date + "]";
	}
	
	
}
