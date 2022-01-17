package ua.lviv.shved.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.shved.dao.EnrollmentRepository;
import ua.lviv.shved.domain.Enrollment;
import ua.lviv.shved.domain.User;

@Service
public class EnrollmentService {
	
	@Autowired
	private EnrollmentRepository enrollmentRepository;
	
	public Enrollment save(Enrollment enrollment) {
		return enrollmentRepository.save(enrollment);
	}
	
	public List<Enrollment> getAllEnrollments(){
		return enrollmentRepository.findAll();
	}
	public void delete(Enrollment enrollment) {
		enrollmentRepository.delete(enrollment);
	}
	
	

}
