package ua.lviv.shved.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import ua.lviv.shved.dao.UserRepository;
import ua.lviv.shved.domain.User;
import ua.lviv.shved.domain.UserRole;

@Service
public class UserService{
	private Logger logger = LoggerFactory.getLogger(UserService.class);

	
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder bCryptPasswordEncoder;


    public void save(User user) {
		logger.info("Saved user " + user);

        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setAccessLevels(UserRole.ROLE_USER);
        userRepository.save(user);
        System.out.println("USERRRRR" + user.toString());
    }
	public void update(User user) {
		logger.info("Update user " + user);

		userRepository.save(user);
		
	}
	

	public List<User> getAllUsers(){
		logger.info("Find all users");

		return userRepository.findAll();
	}

	public User findByEmail(String email) {
		logger.info("Get user {} by email: " + email);
		return userRepository.findByEmail(email).get();
	}

}
