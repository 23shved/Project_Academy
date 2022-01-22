package ua.lviv.shved.academy;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.collection.IsCollectionWithSize.hasSize;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import ua.lviv.shved.dao.EnrollmentRepository;
import ua.lviv.shved.dao.UserRepository;
import ua.lviv.shved.domain.Enrollment;
import ua.lviv.shved.domain.User;
import ua.lviv.shved.domain.UserRole;
import ua.lviv.shved.service.EnrollmentService;
import ua.lviv.shved.service.UserService;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc



public class AcademyApplicationTests {

	@Autowired
	private UserService userService;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private EnrollmentService enrollmentService;

	@Autowired
	private EnrollmentRepository enrollmentRepository;
	
	@Test
	public void testSaveUser() {


		List<User> users = userRepository.findAll();

		User user = new User();

		user.setEmail("abc@gmail.com");
		user.setFirstName("A");
		user.setLastName("B");
		user.setUserRoles(UserRole.ROLE_USER);
		user.setPassword("qwerty");

		userService.save(user);

		users = userRepository.findAll();
		User userFromDB = users.get(users.size()-1);
		
		assertTrue(userFromDB.getEmail().equals(user.getEmail()));
		assertTrue(userFromDB.getFirstName().equals(user.getFirstName()));
		assertTrue(userFromDB.getLastName().equals(user.getLastName()));

	}
	
	@Test
	public void testFindByEmail() {

		List<User> users = userRepository.findAll();

		User user = new User();
	

		user.setEmail("customEmail@gmail.com");
		user.setFirstName("A");
		user.setLastName("B");
		user.setUserRoles(UserRole.ROLE_USER);
		user.setPassword("qwerty");

		userService.save(user);

		users = userRepository.findAll();

		User userByEmail = userService.findByEmail(user.getEmail());
		
		assertTrue(userByEmail.getEmail().equals(user.getEmail()));
		assertTrue(userByEmail.getFirstName().equals(user.getFirstName()));
		assertTrue(userByEmail.getLastName().equals(user.getLastName()));

	}

@Test
	public void testEnrollmetById() {

	List<Enrollment> enrollments = enrollmentRepository.findAll();
	
	
	Enrollment enrollment = new Enrollment();
	enrollment.setFaculty("1");
	enrollment.setSpeciality("1");
	enrollment.setMathZNO(200.0);
	enrollment.setEnglishZNO(200.0);
	enrollment.setInternalTest(200.0);



	enrollmentService.save(enrollment);

	enrollments = enrollmentRepository.findAll();

	Enrollment enrollmentFromDB = enrollments.get(enrollments.size()-1);
	
	assertTrue(enrollmentFromDB.getFaculty().equals(enrollment.getFaculty()));
	assertTrue(enrollmentFromDB.getSpeciality().equals(enrollment.getSpeciality()));
	assertTrue(enrollmentFromDB.getMathZNO().equals(enrollment.getMathZNO()));
	assertTrue(enrollmentFromDB.getEnglishZNO().equals(enrollment.getEnglishZNO()));
	assertTrue(enrollmentFromDB.getInternalTest().equals(enrollment.getInternalTest()));

}


@Test
	public void testSaveEnrollment() {

	List<Enrollment> enrollments = enrollmentRepository.findAll();
	
	
	Enrollment enrollment = new Enrollment();
	enrollment.setFaculty("1");
	enrollment.setSpeciality("1");
	enrollment.setMathZNO(200.0);
	enrollment.setEnglishZNO(200.0);
	enrollment.setInternalTest(200.0);



	enrollmentService.save(enrollment);

	enrollments = enrollmentRepository.findAll();

	Enrollment enrollmentFromDB = enrollmentService.findById(enrollments.get(enrollments.size()-1).getId());
	
	assertTrue(enrollmentFromDB.getFaculty().equals(enrollment.getFaculty()));
	assertTrue(enrollmentFromDB.getSpeciality().equals(enrollment.getSpeciality()));
	assertTrue(enrollmentFromDB.getMathZNO().equals(enrollment.getMathZNO()));
	assertTrue(enrollmentFromDB.getEnglishZNO().equals(enrollment.getEnglishZNO()));
	assertTrue(enrollmentFromDB.getInternalTest().equals(enrollment.getInternalTest()));

}
}

