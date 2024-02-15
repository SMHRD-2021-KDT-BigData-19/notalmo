package kr.board.entity;

public class PostUploadDAO {
	private String user_id;
	private String title;
	private String content;
	private String category;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "PostUploadDAO [user_id=" + user_id + ", title=" + title + ", content=" + content + ", category="
				+ category + "]";
	}
	
	
}
