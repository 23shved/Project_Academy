package ua.lviv.shved.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ua.lviv.shved.domain.Applicant;

public interface ApplicantRepository extends JpaRepository<Applicant, Integer>{

}
