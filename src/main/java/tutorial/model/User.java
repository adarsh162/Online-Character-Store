package tutorial.model;

public class User {
 private int id;
  private String username;
  private String email;
  private String password;
  private String password2;
  private int phone;
  private String address;
  private String img;
  public User() {
  }
  public User(String username, String email, String password, String password2, int phone, String address,String img) {
	super();
	this.username = username;
	this.email = email;
	this.password = password;
	this.password2 = password2;
	this.phone = phone;
	this.address = address;
	this.img=img;
}
  public User(int id,String username, String email, String password, String password2, int phone, String address,String img) {
		super();
		this.id=id;
		this.username = username;
		this.email = email;
		this.password = password;
		this.password2 = password2;
		this.phone = phone;
		this.address = address;
		this.img=img;
	}
  public User(int id,String username, String email, String password,String img) {
		super();
		this.id=id;
		this.username = username;
		this.email = email;
		this.password = password;
		this.img=img;
		
	}

public String getImg() {
	return img;
}
public void setImg(String img) {
	this.img = img;
}
public String getEmail() {
	return email;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getPassword2() {
	return password2;
}
public void setPassword2(String password2) {
	this.password2 = password2;
}
public int getPhone() {
	return phone;
}
public void setPhone(int phone) {
	this.phone = phone;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "User [email=" + email + ", username=" + username + ", password=" + password + ", password2=" + password2
			+ ", phone=" + phone + ", address=" + address + "]";
}

  
}
