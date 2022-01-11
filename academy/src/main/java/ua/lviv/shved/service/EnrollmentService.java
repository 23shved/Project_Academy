package ua.lviv.shved.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.shved.dao.EnrollmentRepository;
import ua.lviv.shved.domain.Enrollment;

@Service
public class EnrollmentService {
	
	@Autowired
	private EnrollmentRepository enrollmentRepository;
	
	public Enrollment save(Enrollment enrollment) {
		return enrollmentRepository.save(enrollment);
	}
	
	public List<Enrollment> getAllPeriodicals(){
		return enrollmentRepository.findAll();
	}

}
