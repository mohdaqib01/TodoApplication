package com.todo.pro.TODOApplicationProject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {

	@Autowired
	TodoRepository tr;
	@GetMapping("/home")
	public String home() {
		return "login.jsp";
	}
	@GetMapping("/welcome")
	public String welcome() {
		return "welcome.jsp";
	}
	@GetMapping("/logout")
	public String logout() {
		return "logout.jsp"; 
	}
	@GetMapping("/addtodo")
	public String addtodo() {
		return "addtodo.jsp";
	}
	@GetMapping("/registertodo")
	public String registertodo(Todos t) {
		tr.save(t);
		return "todos";
	}
	@GetMapping("/deletetodo")
	public String deletetodo(int sno) 
	{	
		tr.deleteById(sno);
		
		return "todos";
	}
	@GetMapping("/edittodo")
	public ModelAndView edittodo(int id) 
	{	
		Todos td=tr.findById(id).get();
		ModelAndView mv=new ModelAndView();
		mv.addObject("obj", td);
		mv.setViewName("edittodo.jsp");
		
		return mv;
	}
	@GetMapping("/updatetodo")
	public String updatetodo(Todos t) 
	{	
		tr.save(t);	
		return "todos";
	}
	@GetMapping("/todos")
	public ModelAndView todos(ModelMap mp) {
		ModelAndView mv= new ModelAndView();
		mp.put("obj", tr.findAll());
		mv.addAllObjects(mp);
		mv.setViewName("todos.jsp");
		tr.findAll();
		return mv;
	}
	@GetMapping("/login")
	public String login(String uname, String pwd) {
		String res;
		if (uname.equals(pwd)) {
			res="welcome.jsp";
		}
		else {
			res= "login.jsp";
		}
		return res;
	}
}
