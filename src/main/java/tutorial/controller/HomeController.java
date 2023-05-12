package tutorial.controller;
import java.sql.SQLException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServlet;
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
import tutorial.model.User;


@Controller
public class HomeController {
  @RequestMapping("/home")
  public String home(Model model) {
	 
	  return "home";
  }
  @RequestMapping("/home1")
  public String home1(HttpServletRequest req) {
	  HttpSession session=req.getSession();
	  User user = (User) session.getAttribute("user");
	  productdb bk = new productdb(myConnection.getConnection());
	  bk.removeallproducts(user.getId());
	  
	  return "home";
  }
  @RequestMapping("/home2")
  public String h2() {
	  return "home2";
  }
  @RequestMapping("/showcus")
  public String scus() {
	  return "showcus";
  }
  @RequestMapping("/about")
  public String about() {
	  System.out.println("this is about url");
	  return "about";
  }
  @RequestMapping("/help")
  public ModelAndView help() {
	  System.out.println("This is help page");
	  ModelAndView mav=new ModelAndView();
	  mav.addObject("name","adarsh from help");
	  mav.setViewName("help");
	  return mav;
  }
  @RequestMapping("/Register")
  public String register() {
	  return "register";
  }
  @RequestMapping(path="/processform",method=RequestMethod.POST)
  public String handleform(
          HttpServletRequest req,
          Model model) throws SQLException {
		String username = req.getParameter("username");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String password2 = req.getParameter("password2");
		int phone=Integer.parseInt(req.getParameter("phone"));
		String address=req.getParameter("address");
	    String img=req.getParameter("image");
	  User umodel=new User(username,email,password,password2,phone,address,img);
	  Userdb regUser = new Userdb(myConnection.getConnection());
		if (regUser.saveUser(umodel)) {
		   return "log";
		} 
		else {
		    String errorMessage = "User Available";
		    return "home";
		    
		    }
	   
  }
  @RequestMapping("/")
  public String log1() {
	  return "log";
  }
  @RequestMapping("/log")
  public String log() {
	  return "log";
  }
  @RequestMapping(path="/processlogform",method=RequestMethod.POST)
  public String handlelogform(@RequestParam("email")String email,@RequestParam("password") String password,@RequestParam(value="checkbox",required=false) String checkboxValue,HttpServletRequest request,Model model) {
	  Userdb db =  new Userdb(myConnection.getConnection());
      User user = db.logUser(email, password);
     
      //int ad=Integer.parseInt(admin);
      //System.out.println(ad);
      if(user!=null){
          HttpSession session = request.getSession();
         
          session.setAttribute("logUser", user);
          session.setAttribute("isadmin",checkboxValue);
          model.addAttribute("user",user);
          if(checkboxValue != null)
          {
        	  return "home";
          }
          else
          {
            return "home";
          }
          
      }else{
          System.out.println("user not found");
          return "home";
      
	 
  }
}
  @RequestMapping(path="/myprof",method=RequestMethod.GET)
  public String showprof(HttpServletRequest request,Model model) {
	  HttpSession session=request.getSession();
	  
	  User user=(User)session.getAttribute("logUser");
	  
	  session.setAttribute("user", user);
	  model.addAttribute("user",user);
	  return "showprof";
  }
  @RequestMapping("/editprof")
  public String editprof() {
	  return "editprof";
  }
  @RequestMapping("/editprofreturn")
  public String Editprof(HttpServletRequest request) {
	  int id=Integer.parseInt(request.getParameter("bkid"));
	  String name = request.getParameter("bkname");
      String email = request.getParameter("bkemail");
      String password = request.getParameter("bkpassword");    
      String img=request.getParameter("image");
     User user=new User(id,name,email,password,img);
     try{
    	 Userdb edituser = new Userdb(myConnection.getConnection());
         if(edituser.edit(user)){
        	 return "home";
         }else{
             System.out.println("wrong credential");
             return "home";
 }
         
     }catch(Exception e){
         e.printStackTrace();
     }
	  return "home";
	  
  }

  @RequestMapping(path="logout")
  public String logout(HttpServletRequest req) {
	  HttpSession session=req.getSession();
	  session.removeAttribute("logUser");
	  return "log";
  }

  
}

