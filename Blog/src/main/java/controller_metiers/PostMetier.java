package controller_metiers;

import java.sql.ResultSet;
import java.sql.SQLException;

import DAO.dbConnect;
import models.PostModel;



public class PostMetier {
	
	public void createPost(PostModel post) {
		dbConnect cb = new dbConnect();
		PostModel postModel = new PostModel();
		cb.connect();
		
		String req = "insert into post(title, content) values('"+postModel.getTitle()+"', '"+postModel.getContent()+"');";
		
		try {
			
			cb.st.executeUpdate(req);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public void delPost(int id) {
		dbConnect cb = new dbConnect();
		cb.connect();
		
		String req = "delete from post where id='"+id+"';";
		
		try {
			cb.st.executeUpdate(req);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void updatePost(PostModel post) {
		dbConnect cb = new dbConnect();
		cb.connect();
		
		String req = "update post set title='"+post.getTitle()+"', content='"+post.getContent()+"';";
		
		try {
			cb.st.executeUpdate(req);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public PostModel searchId(int id) {
		
		PostModel post = new PostModel();
		
		dbConnect cb = new dbConnect();
		cb.connect();
		
		String req = "select * from post where id='"+id+"';";
		
		try {
			ResultSet rs = cb.st.executeQuery(req);
			if(rs.next()) {
				post.setId(rs.getInt("id"));
				post.setTitle(rs.getString("title"));
				post.setContent(rs.getString("content"));
				post.setUserId(rs.getInt("user_id"));
				
			}else{
				post = null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return post;
	}
}
