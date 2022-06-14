package models;

public class PostModel {
	private int id, userId;
	private String title, content;
	
	
	public PostModel(int id, String title, String content) {
		super();
		this.id = id;
		//this.userId = uId;
		this.title = title;
		this.content = content;
		
		
	}
	
	public PostModel() {
		super();
	}

	public PostModel(String title, String content) {
		super();
		//this.userId = uId;
		this.title = title;
		this.content = content;
		
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
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
}
	
