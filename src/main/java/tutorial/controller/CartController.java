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
import tutorial.model.products;
@Controller
public class CartController {
	@RequestMapping(path="/cartp",method=RequestMethod.GET)
	  public String cartp(HttpServletRequest request) throws SQLException {
		  HttpSession session=request.getSession();
		  User user=(User)session.getAttribute("logUser");
		  session.setAttribute("user", user);
		  int pid=Integer.parseInt(request.getParameter("id"));
		  productdb bkd = new productdb(myConnection.getConnection());
		  products p=bkd.getSingleproduct(pid);
		  if(bkd.addtocart(p,user.getId())) {
			  return "home";
		  }else {
			  return "";
		  }
		 
		     
	  }
	  @RequestMapping("/mycart")
	  public String mycart() {
		  return "mycart";
	  }
	  @RequestMapping(path="/checkp",method=RequestMethod.GET)
	  public String checkp(HttpServletRequest req,Model model) {
		  int a=Integer.parseInt(req.getParameter("price"));
		  HttpSession session=req.getSession();
		  session.setAttribute("price", a);
		  model.addAttribute("price",a);
		  
		  return "checkout";
	  }
	  @RequestMapping(path="/deletefromcart",method=RequestMethod.GET)
	  public String remove(HttpServletRequest req) {
		  int pid=Integer.parseInt(req.getParameter("id"));
		  productdb bkd = new productdb(myConnection.getConnection());
		  bkd.removefromcart(pid);
		  return "mycart";
	  }
	  
}
