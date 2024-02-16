package kr.board.entity;

public class ImageDAO {
	private int picture_id;
	private String t_name;
	private int t_id;
	private String folder;
	private String file_name;
	private String create_date;
	
	public int getPicture_id() {
		return picture_id;
	}
	public void setPicture_id(int picture_id) {
		this.picture_id = picture_id;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public int getT_id() {
		return t_id;
	}
	public void setT_id(int t_id) {
		this.t_id = t_id;
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
		return "ImageDAO [picture_id=" + picture_id + ", t_name=" + t_name + ", t_id=" + t_id + ", folder=" + folder
				+ ", file_name=" + file_name + ", create_date=" + create_date + "]";
	}
	
	
}
