package ua.lviv.shved.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ua.lviv.shved.service.EnrollmentDTOHelper;
import ua.lviv.shved.service.EnrollmentService;
import ua.lviv.shved.service.ListOfStudentsService;


@Controller

public class EnrollmentController {
	 @Autowired
	 private EnrollmentService enrollmentService;


		@RequestMapping(value = "/applyForm", method = RequestMethod.POST)
		public ModelAndView createEnrollment(
				@RequestParam String faculty, 
				@RequestParam String speciality, 
				@RequestParam Double mathZNO,
				@RequestParam Double englishZNO,
				@RequestParam Double internalTest) throws IOException {		
			
			enrollmentService.save(EnrollmentDTOHelper.registerEnrollment(faculty, speciality, mathZNO, englishZNO, internalTest));

			return new ModelAndView("redirect:/home");
		}
	 
}
