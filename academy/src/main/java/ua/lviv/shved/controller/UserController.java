package ua.lviv.shved.controller;

import java.io.IOException;
import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ua.lviv.shved.dao.UserRepository;
import ua.lviv.shved.domain.Enrollment;
import ua.lviv.shved.domain.User;
import ua.lviv.shved.service.EnrollmentService;
import ua.lviv.shved.service.UserDTOHelper;
import ua.lviv.shved.service.UserService;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private EnrollmentService enrollmentService;
    
	@Autowired
    private UserRepository userRepository;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)   
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) throws IOException {

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        return "redirect:/home";
    }

    @RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @RequestMapping(value ="/home", method = RequestMethod.GET)
	public ModelAndView welcome() {
		return getEnrollmentItems();
	}
    
    
	private ModelAndView getEnrollmentItems() {
		ModelAndView map = new ModelAndView("home");
		map.addObject("userImage", userService.getAllUsers());
		map.addObject("enrollments", enrollmentService.getAllEnrollments());
		return map;
	}
    
    
    @RequestMapping(value ="/applyForm", method = RequestMethod.GET)
    public String createPeriodical() {
    	return "applyForm";
    }  
    
    @RequestMapping(value = "/addImage", method = RequestMethod.POST)
	public String addImage(@RequestParam MultipartFile image,  HttpServletRequest request) throws IOException {

		Principal principal = request.getUserPrincipal();
		User userUp = userRepository.findByEmail(principal.getName()).get();
			
		userService.update(UserDTOHelper.setImage(image, userUp));

		return "redirect:/home";
	}
    
}
