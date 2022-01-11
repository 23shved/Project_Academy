package ua.lviv.shved.service;

import java.io.IOException;

import ua.lviv.shved.domain.Enrollment;

public class EnrollmentDTOHelper {

	public static Enrollment registerEnrollment(String faculty, String speciality, Double mathZNO,  Double englishZNO, Double internalTest) throws IOException {
		Enrollment enrollment = new Enrollment();
		enrollment.setFaculty(faculty);
		enrollment.setSpeciality(speciality);
		enrollment.setMathZNO(mathZNO);
		enrollment.setEnglishZNO(englishZNO);
		enrollment.setInternalTest(internalTest);
		enrollment.calculateAverage();
		
		return enrollment;
	}
}
