package ua.lviv.shved.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ua.lviv.shved.domain.Enrollment;

public interface EnrollmentRepository extends JpaRepository<Enrollment, Integer>{

}
