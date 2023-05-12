package tutorial.controller;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import tutorial.model.User;


public class Userdb {
 Connection con ;

		    public Userdb(Connection con) {
		        this.con = con;
		    }
		    
		    //for register user 
		    public boolean saveUser(User user)throws SQLException{
		    	
		        boolean set = false;
		        try{
		            //Insert register data to database
		            String query = "insert into loginuser(username,email,password,password2,phone,address,image) values(?,?,?,?,?,?,?)";
		           
		           PreparedStatement pt = ((Connection) this.con).prepareStatement(query);
		           pt.setString(1, user.getUsername());
		           pt.setString(2, user.getEmail());
		           pt.setString(3, user.getPassword());
		           pt.setString(4, user.getPassword2());
		           pt.setInt(5, user.getPhone());
		           pt.setString(6, user.getAddress());
		           pt.setString(7, user.getImg());
		           
		           
		           int x;
		           x=pt.executeUpdate();
		           set = true;
		           System.out.println("Rows Updated" + x);
		        }
		        catch(Exception e){
		            e.printStackTrace();
		        }
		        System.out.println(set);
		        return set;
		    }
		    public User logUser(String email,String password) {
		      
			        User usr=null;
			        try{
			            String query ="select * from loginuser where email=? and password=?";
			            PreparedStatement pst = this.con.prepareStatement(query);
			            pst.setString(1, email);
			            pst.setString(2, password);
			            
			            ResultSet rs = pst.executeQuery();
			            
			            if(rs.next()){
			                usr = new User();
			                usr.setId(rs.getInt("id"));
			                usr.setUsername(rs.getString("username"));
			                usr.setEmail(rs.getString("email"));
			                usr.setPassword(rs.getString("password"));
			                usr.setPassword2(rs.getString("password2"));
			                usr.setPhone(rs.getInt("phone"));
			                usr.setAddress(rs.getString("address"));
			                usr.setImg(rs.getString("image"));
			               
			                		
			            }
			            
			        }catch(Exception e){
			            e.printStackTrace();
			        }
			       
		    	return usr ;
		    }
		    public boolean edit(User user) {
		    	try {
		    		String query ="update loginuser set username=?,email=?,password=?,image=? where id=?";
		    		PreparedStatement pt = ((Connection) this.con).prepareStatement(query);
		    		
		    		pt.setString(1, user.getUsername());
			           pt.setString(2, user.getEmail());
			           pt.setString(3, user.getPassword());
			           pt.setString(4, user.getImg());
		    		pt.setInt(5, user.getId());
		    		  int x;
			           x=pt.executeUpdate();
			          
			           System.out.println("Rows Updated" + x);
			           return true;
		    	}
		    	catch(Exception e){
		            e.printStackTrace();
		            return false;
		        }
		    }
		    public List<User> getAlluser(){
		        List<User> p = new ArrayList<>();
		        
		        try{
		            
		            String query = "select * from loginuser";
		            PreparedStatement pt = this.con.prepareStatement(query);
		            ResultSet rs = pt.executeQuery();
		            
		            while(rs.next()){
		                int id = rs.getInt("id");
		                String pname = rs.getString("username");
		                String pdes = rs.getString("email");
		                String aname = rs.getString("password");
		                String aname1 = rs.getString("password2");
		                int phn = rs.getInt("phone");
		                String add = rs.getString("address");
		                String img=rs.getString("image");
		                
		                
		                User row = new User(id,pname,pdes,aname,aname1,phn,add,img);
		                p.add(row);
		            }
		            
		        }catch(Exception e){
		            e.printStackTrace();;
		        }
		        return p;
		    }
		    
}
