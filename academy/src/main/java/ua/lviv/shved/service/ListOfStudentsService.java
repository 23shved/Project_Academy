package ua.lviv.shved.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.shved.dao.ListOfStudentsRepository;
import ua.lviv.shved.domain.ListOfStudents;

@Service
public class ListOfStudentsService {

	
	@Autowired
	private ListOfStudentsRepository listOfStudentsRepository;
	
	public List<ListOfStudents> getAll(){
		return listOfStudentsRepository.findAll();
	}
	
	public void delete(ListOfStudents listOfStudents) {
		listOfStudentsRepository.delete(listOfStudents);
	}
	
	public void add(ListOfStudents listOfStudents) {
		listOfStudentsRepository.save(listOfStudents);
	}
}
