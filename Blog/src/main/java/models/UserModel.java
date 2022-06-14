package models;

public class UserModel {
	
	private int id;
	private String prenom, nom, login, password,role;
	
	public UserModel(int id, String prenom, String nom, String login, String password,String role) {
		super();
		this.id = id;
		this.prenom = prenom;
		this.nom = nom;
		this.login = login;
		this.password = password;
		this.role = role;
		
	}
	
	public UserModel() {
		super();
	}

	public UserModel(String prenom, String nom, String login, String password,String role) {
		super();
		this.prenom = prenom;
		this.nom = nom;
		this.login = login;
		this.password = password;
		this.role = role;
		
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	

	
	
}
