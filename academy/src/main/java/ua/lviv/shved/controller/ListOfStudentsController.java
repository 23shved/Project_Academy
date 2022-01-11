package ua.lviv.shved.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ua.lviv.shved.service.EnrollmentService;
import ua.lviv.shved.service.ListOfStudentsService;
import ua.lviv.shved.service.UserService;

@Controller
public class ListOfStudentsController {

	
	@Autowired
	private ListOfStudentsService listOfStudentsService;
	@Autowired
	private UserService userService;
	@Autowired
	private EnrollmentService enrollmentService;

	@RequestMapping(value = "/listOfStudents", method = RequestMethod.GET)
	public ModelAndView getAllStudent() {
		return getEachStudent();
	}

	private ModelAndView getEachStudent() {
		ModelAndView map = new ModelAndView("listOfStudents");
		map.addObject("student", listOfStudentsService.getAll());
		return map;
	}
	
}
