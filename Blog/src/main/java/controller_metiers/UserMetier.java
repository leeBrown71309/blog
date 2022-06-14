package controller_metiers;

import java.sql.ResultSet;
import java.sql.SQLException;

import DAO.dbConnect;
import models.UserModel;

public class UserMetier {
	//Add User
		public void addUser(UserModel um) {
			dbConnect cb = new dbConnect();
			cb.connect();
			
			String req = "insert into user(prenom, nom, login, password, role) values('"+um.getPrenom()+"', '"+um.getNom()+"', '"+um.getLogin()+"', '"+um.getPassword()+"', '"+um.getRole()+"');";
			
			try {
				boolean t = verifLogin(um.getLogin());
				cb.st.executeUpdate(req);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//Delete User
		public void delUser(int id) {
			dbConnect cb = new dbConnect();
			cb.connect();
			
			String req = "delete from user where id='"+id+"';";
			
			try {
				cb.st.executeUpdate(req);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//Update User
		public void updateUser(UserModel um) {
			dbConnect cb = new dbConnect();
			cb.connect();
			
			String req = "update user set prenom='"+um.getPrenom()+"', nom='"+um.getNom()+"', login='"+um.getLogin()+"', password='"+um.getPassword()+"' where id='"+um.getId()+"';";
			
			try {
				cb.st.executeUpdate(req);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//Search by ID
		public UserModel searchId(String login) {
			
			UserModel um = new UserModel();
			
			dbConnect cb = new dbConnect();
			cb.connect();
			
			String req = "select * from user where login='"+login+"';";
			
			try {
				ResultSet rs = cb.st.executeQuery(req);
				if(rs.next()) {
					um.setId(rs.getInt("id"));
					um.setLogin(rs.getString("login"));
					um.setPrenom(rs.getString("prenom"));
					um.setNom(rs.getString("nom"));
					um.setPassword(rs.getString("password"));
				}else{
					um = null;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return um;
		}
		
		//List Users
		public ResultSet list() {
			ResultSet rs = null;
			
			dbConnect cb = new dbConnect();
			cb.connect();
			
			String req = "select * from user;";
			
			try {
				rs = cb.st.executeQuery(req);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
		
		//Test login
		public boolean testLogin(String log, String pass) {
			boolean val = false;
			
			dbConnect cb = new dbConnect();
			cb.connect();
			
			String req = "select * from user where login='"+log+"' and password='"+pass+"';";
			
			try {
				ResultSet rs = cb.st.executeQuery(req);
				while(rs.next()) {
					val = true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return val;
		}
		
		public boolean verifLogin(String log) {
			boolean x = false;
			
			dbConnect cb = new dbConnect();
			cb.connect();
			
			String req = "select login from user where login='"+log+"';";
			try {
				ResultSet res = cb.st.executeQuery(req);
				if(res.next()) {
					x=true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return x;
		}
}
