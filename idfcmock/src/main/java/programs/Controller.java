package programs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@org.springframework.stereotype.Controller
public class Controller {
	@Autowired
	Emplyoee emplyoee;
	@Autowired
	Operations operations;

//--------insert-----------	
	@RequestMapping("/signup")
	public ModelAndView signup() {
		ModelAndView mv = new ModelAndView("signup.jsp");
		mv.addObject("key", emplyoee);
		return mv;
	}

	@ResponseBody
	@RequestMapping("/signupjs")
	public void signup(Emplyoee emp) {
		operations.insert(emp);
	}

//---------delete---------
	@RequestMapping("/delete")
	public ModelAndView delete() {
		ModelAndView mv = new ModelAndView("delete.jsp");
		mv.addObject("attributes", emplyoee);
		return mv;
	}

	@ResponseBody
	@RequestMapping("/deletejsp")
	public String delete(int id) {
		operations.delete(id);
		return "deleted";
	}

//-------fetchAll---------	
	@RequestMapping("/displayall")
	public ModelAndView displayAll() {
		List<Emplyoee> details = operations.fetchAll();
		ModelAndView mv = new ModelAndView("displayall.jsp");
		mv.addObject("key", details);
		return mv;
	}

//-------fetchById-----------	
	@RequestMapping("/display")
	public ModelAndView display() {
		ModelAndView mv = new ModelAndView("get.jsp");
		mv.addObject("formKey", emplyoee);
		return mv;
	}

	@ResponseBody
	@RequestMapping("/displayjs")
	public ModelAndView display(int id) {
		Emplyoee emp = operations.fetchById(id);
		ModelAndView mv = new ModelAndView("display.jsp");
		mv.addObject("requestKey", emp);
		return mv;
	}

//---------update-----------

	@RequestMapping("/update")
	public ModelAndView update() {
		ModelAndView mv = new ModelAndView("update.jsp");
		mv.addObject("formKey", emplyoee);
		return mv;
	}

	@ResponseBody
	@RequestMapping("/updatejs")
	public String update(int id, String email) {
		operations.updateMail(id, email);
		return "updated";
	}

}

