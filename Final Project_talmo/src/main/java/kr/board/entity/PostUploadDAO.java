package kr.board.entity;

public class PostUploadDAO {
	private int post_id;
	private int user_id;
	private String title;
	private String content;
	private String category;
	
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
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
		return "PostUploadDAO [post_id=" + post_id + ", user_id=" + user_id + ", title=" + title + ", content="
				+ content + ", category=" + category + "]";
	}
	
	
	
}
