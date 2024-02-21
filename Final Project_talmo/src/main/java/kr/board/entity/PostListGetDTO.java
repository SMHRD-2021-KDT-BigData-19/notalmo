package kr.board.entity;

public class PostListGetDTO {
	private int post_id;
	private int user_id;
	private String title;
	private String category;
	private String create_date;
	private String nick;
	
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	@Override
	public String toString() {
		return "PostListGetDTO [post_id=" + post_id + ", user_id=" + user_id + ", title=" + title + ", category="
				+ category + ", create_date=" + create_date + ", nick=" + nick + "]";
	}
	
	
}
