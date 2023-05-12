package tutorial.controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import tutorial.model.products;

/*//import java.util.ArrayList;
//import java.util.List;
*/
public class productdb {
	
	 Connection con;

	    public productdb(Connection con) {
	        this.con = con;
	    }
	    
	    
	    
	    public boolean addproduct(products p)throws SQLException{
	    
	        boolean test = false;
	   
	        try{
	        	
	            String query =  "insert into product (pName,pDesc,price,cat,img) values(?,?,?,?,?)";
	            PreparedStatement pst = this.con.prepareStatement(query);
	            pst.setString(1, p.getpName());
	            pst.setString(2, p.getpDesc());
	            pst.setInt(3, p.getprice());
	            pst.setString(4, p.getCat());
	            pst.setString(5,p.getImg());
	            pst.executeUpdate();
	            test= true;

	        }catch(Exception e){
	            e.printStackTrace();
	        }
	        return test;
	    }

	    public List<products> getAllproducts(){
	        List<products> p = new ArrayList<>();
	        
	        try{
	            
	            String query = "select * from product";
	            PreparedStatement pt = this.con.prepareStatement(query);
	            ResultSet rs = pt.executeQuery();
	            
	            while(rs.next()){
	                int id = rs.getInt("id");
	                String pname = rs.getString("pName");
	                String pdes = rs.getString("pDesc");
	                int aname = rs.getInt("price");
	                String cat = rs.getString("cat");
	                String img=rs.getString("img");
	                
	                products row = new products(id,pname,pdes,aname,cat,img);
	                p.add(row);
	            }
	            
	        }catch(Exception e){
	            e.printStackTrace();;
	        }
	        return p;
	    }
	    

	    public boolean editproduct(products p){
	    	boolean test=false;
	        
	        try{
	            String query = "update product set pName=?, pDesc=?, price=?, cat=? ,img=? where id=?";
	            PreparedStatement pt = this.con.prepareStatement(query);
	            pt.setString(1, p.getpName());
	            pt.setString(2, p.getpDesc());
	            pt.setInt(3, p.getprice());
	            pt.setString(4, p.getCat());
	            pt.setString(5,p.getImg());
	            pt.setInt(6, p.getId());
	            
	            pt.executeUpdate();
	            test=true;
	            
	        }catch(Exception ex){
	            ex.printStackTrace();
	        }
	        return test;
	        
	    }
	    public void removeallproducts(int id) {
	    	try {
                String query = "delete from order_s where id=? ";
	            
	            PreparedStatement pt = this.con.prepareStatement(query);
	            pt.setInt(1, id);
	            pt.executeUpdate();
	    	}
	    	catch(Exception ex) {
	    		ex.printStackTrace();
	    	}
	    }
	    public boolean addtocart(products p,int id) throws SQLException {
	    	String query1="CREATE TABLE IF NOT EXISTS order_s(pid int(11),pname varchar(50),pdes varchar(50),pprice int(11),img varchar(100),id int(11))";
	    	PreparedStatement p1 = ((Connection) this.con).prepareStatement(query1);
	    	if(p1.execute()) {
				System.out.println("Error in table creation");
				
			}
	    	boolean test=false;
	    	try {
	    		String query="insert into order_s (pid,pname,pdes,pprice,img,id) values(?,?,?,?,?,?)";
	    		PreparedStatement pst = this.con.prepareStatement(query);
	    		 pst.setInt(1, p.getId());
	    		 pst.setString(2,p.getpName());
		            pst.setString(3, p.getpDesc());
		            pst.setInt(4, p.getprice());
		            pst.setString(5,p.getImg());
		            pst.setInt(6, id);
		            pst.executeUpdate();
		            test= true;
	    		
	    	}
	    	catch(Exception ex){
	            ex.printStackTrace();
	        }
	        return test;
	    }
	    public int getorderprice(int id) {
	    	int price=0;
	    	try {
	    		String query="select pprice from order_s where id=?";
	    		PreparedStatement pst = this.con.prepareStatement(query);
	    		pst.setInt(1, id);
	    		ResultSet rs = pst.executeQuery();
	    		while(rs.next()){
	                int pid = rs.getInt("pprice");
	                price = price + pid;
	    	    }
	    	}
	    		catch(Exception ex){
		            ex.printStackTrace();
		        }
	    		return price;
	    }
	    public List<products> getAllproductsoforder(int id) throws SQLException{
	    	String query1="CREATE TABLE IF NOT EXISTS order_s(pid int(11),pname varchar(50),pdes varchar(50),pprice int(11),img varchar(100),id int(11))";
	    	PreparedStatement p1 = ((Connection) this.con).prepareStatement(query1);
	    	if(p1.execute()) {
				System.out.println("Error in table creation");
				
			}
          List<products> p = new ArrayList<>();
	        
	        try{
	        	String query = "select * from order_s where id=?";
	            PreparedStatement pt = this.con.prepareStatement(query);
	            pt.setInt(1, id);
	            ResultSet rs = pt.executeQuery();
	            
	            while(rs.next()){
	                int pid = rs.getInt("pid");
	                String pname = rs.getString("pname");
	                String pdes = rs.getString("pdes");
	                int aname = rs.getInt("pprice");
	                String img=rs.getString("img");
	                
	                
	                products row = new products(pid,pname,pdes,aname,img);
	                p.add(row);
	            }
	            
	        }catch(Exception e){
	            e.printStackTrace();;
	        }
	        return p;
	        }
	    
	    

	    public products getSingleproduct(int id){
	        products bk = null;
	        
	        try{
	            String query = "select * from product where id=? ";
	            
	            PreparedStatement pt = this.con.prepareStatement(query);
	            pt.setInt(1, id);
	            ResultSet rs= pt.executeQuery();
	            
	            while(rs.next()){
	            	
	                int bid = rs.getInt("id");
	                String bnm = rs.getString("pName");
	                String bdes = rs.getString("pDesc");
	                int anm = rs.getInt("price");
	                String cat  = rs.getString("cat");
	                String img=rs.getString("img");
	                bk = new products(bid,bnm,bdes,anm,cat,img);
	            }
	        }catch(Exception ex){
	            ex.printStackTrace();
	        }
	        return bk;
	    }
	    public boolean removefromcart(int pid) {
	    	boolean test=false;
	        try{
	            
	           String query= "delete from order_s where pid=?";
	           PreparedStatement pt = this.con.prepareStatement(query);
	           pt.setInt(1, pid);
	           pt.execute();
	            test=true;
	        }catch(Exception ex){
	            ex.printStackTrace();;
	        }
	        return test;
	    }
	    

	    
	    
	    public boolean deleteproduct(int id){
	    	boolean test=false;
	        try{
	            
	           String query= "delete from product where id=?";
	           PreparedStatement pt = this.con.prepareStatement(query);
	           pt.setInt(1, id);
	           pt.execute();
	            test=true;
	        }catch(Exception ex){
	            ex.printStackTrace();;
	        }
	        return test;
	    }

}
