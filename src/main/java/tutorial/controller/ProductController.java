package tutorial.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tutorial.connection.myConnection;
import tutorial.model.products;
@Controller
public class ProductController {
   @RequestMapping("/contact")
   public String showForm() {
	   return "contact";
   }
   
   @RequestMapping("/addp")
   public String addp() {
 	  return "addproduct";
   }
   @RequestMapping("/addproduct")
   public String addproduct(HttpServletRequest request) {
 	  String bname = request.getParameter("bkname");
       String bdesc = request.getParameter("bkdes");
       int athname = Integer.parseInt(request.getParameter("authname"));          
       String cat = request.getParameter("category");
       String img=request.getParameter("img");
       products p = new products(bname, bdesc, athname, cat,img);
       try{
           productdb bk = new productdb(myConnection.getConnection());
           if(bk.addproduct(p)){
              return "home";
           }else{
         	  
               System.out.println("Something wrong");
               return "home";
           }
           
       }catch(Exception e){
           e.printStackTrace();
           return "";	
       }
   }
   @RequestMapping(path="/editp",method=RequestMethod.GET)
   public String editp(HttpServletRequest request) {
 	  int id=Integer.parseInt(request.getParameter("id"));
 	 
 	 HttpSession session = request.getSession();
      
      session.setAttribute("id", id);
 	  return "editproduct";
   }
   @RequestMapping(path="/openp",method=RequestMethod.GET)
   public String open(HttpServletRequest request) {
	   int id=Integer.parseInt(request.getParameter("id"));
	 	 
	 	 HttpSession session = request.getSession();
	      
	      session.setAttribute("id", id);
	      return "singleproduct";
   }
   @RequestMapping("/editproduct")
   public String editproduct(HttpServletRequest request) {
 	  String bname = request.getParameter("bkname");
       String bdesc = request.getParameter("bkdes");
       int athname = Integer.parseInt(request.getParameter("authname"));          
       String cat = request.getParameter("category");
       String img=request.getParameter("img");
       
       HttpSession session = request.getSession();
       
       int id=(int) session.getAttribute("id");
      
       products p = new products(id,bname, bdesc, athname, cat,img);
       
       try{
           productdb bk = new productdb(myConnection.getConnection());
           if(bk.editproduct(p)){
               return "home";
           }else{
               System.out.println("wrong credential");
               return "home";
           }
           
       }catch(Exception e){
           e.printStackTrace();
           return "";
       }
   }
   @RequestMapping(path="/deletep",method=RequestMethod.GET)
   public String deletep(HttpServletRequest request) {
 	  int id=Integer.parseInt(request.getParameter("id"));
 	  productdb bkd = new productdb(myConnection.getConnection());
       bkd.deleteproduct(id);
       return "home";
   }
}
