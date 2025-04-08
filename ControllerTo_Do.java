package control;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import entity.MappingClass;
import util.Validate;
@Controller
public class ControllerTo_Do {
	@GetMapping("/start")
	public String viewPage() {
		
		return "Addtask";
	}
	
	@GetMapping("/add")
	public ModelAndView addData(@RequestParam("task")String task) {
		
		Validate v=new Validate();
	boolean isTrue=	v.saveTask(task);
	ModelAndView m =new ModelAndView();
	if(isTrue) {
		m.setViewName("done");
		m.addObject("success", "Task has been added successfully");
		
	} 
	else {
		m.setViewName("done");
		m.addObject("success", "Task has not been added successfully");
		
	}
	return m;
		
	}
	@GetMapping("/show")
	public ModelAndView showData() {
		Validate vd=new Validate();
	List<MappingClass> mc;
		mc=vd.showTask();
		ModelAndView m=new ModelAndView();
		m.setViewName("addedTask");
		m.addObject("result", mc);
		return m;
	}
	
	@GetMapping("/delete")
	public ModelAndView  deleteTask(@RequestParam("taskId")int id) {
		Validate vd=new Validate();
		ModelAndView mv=new ModelAndView();
int reflectedRows=vd.deleteTask(id);
if(reflectedRows>0) {
	mv.setViewName("deleted");
	mv.addObject("message", "Task has been deleted successfully ");
	return mv;
}
else {
	mv.setViewName("deleted");
	mv.addObject("message", "Task not found");
	return mv;
}
	
	
	

}
}
