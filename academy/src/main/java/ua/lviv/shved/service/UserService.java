package ua.lviv.shved.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import ua.lviv.shved.dao.UserRepository;
import ua.lviv.shved.domain.User;
import ua.lviv.shved.domain.UserRole;

@Service
public class UserService{
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder bCryptPasswordEncoder;


    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setAccessLevels(UserRole.ROLE_USER);
        userRepository.save(user);
    }

}
