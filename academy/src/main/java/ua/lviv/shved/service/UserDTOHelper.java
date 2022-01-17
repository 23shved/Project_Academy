package ua.lviv.shved.service;

import java.io.IOException;
import java.util.Base64;

import org.springframework.web.multipart.MultipartFile;

import ua.lviv.shved.domain.User;

public class UserDTOHelper {

	public static User setImage(MultipartFile file, User user) throws IOException {
		
		user.setEncodedImage(Base64.getEncoder().encodeToString(file.getBytes()));
		
		return user;
	}
}
