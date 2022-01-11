package ua.lviv.shved.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ua.lviv.shved.domain.ListOfStudents;

public interface ListOfStudentsRepository extends JpaRepository<ListOfStudents, Integer>{

}
