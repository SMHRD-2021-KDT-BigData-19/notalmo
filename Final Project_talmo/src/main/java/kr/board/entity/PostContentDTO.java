package kr.board.entity;

public class PostContentDTO {
	private int post_id;
	private int user_id;
	private String title;
	private String content;
	private String category;
	private String create_date;
	private int view_cnt;
	private int report_cnt;
	
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
	
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public int getView_cnt() {
		return view_cnt;
	}
	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}
	public int getReport_cnt() {
		return report_cnt;
	}
	public void setReport_cnt(int report_cnt) {
		this.report_cnt = report_cnt;
	}
	@Override
	public String toString() {
		return "PostContentDTO [post_id=" + post_id + ", user_id=" + user_id + ", title=" + title + ", content="
				+ content + ", category=" + category + ", create_date=" + create_date + ", view_cnt=" + view_cnt
				+ ", report_cnt=" + report_cnt + "]";
	}
}
