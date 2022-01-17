package ua.lviv.shved.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.shved.dao.EnrollmentRepository;
import ua.lviv.shved.domain.Enrollment;

@Service
public class EnrollmentService {
	
	private Logger logger = LoggerFactory.getLogger(EnrollmentService.class);
	
	@Autowired
	private EnrollmentRepository enrollmentRepository;
	
	public Enrollment save(Enrollment enrollment) {
		
		logger.info("Save enrollments");
		return enrollmentRepository.save(enrollment);
	}
	
	public List<Enrollment> getAllEnrollments(){
		logger.info("Get all enrollments");

		return enrollmentRepository.findAll();
	}
	public void delete(Enrollment enrollment) {
		logger.info("Delete enrollments " + enrollment);

		enrollmentRepository.delete(enrollment);
	}
	
	

}
