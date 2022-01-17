package ua.lviv.shved.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import ua.lviv.shved.domain.User;

public interface UserRepository extends JpaRepository<User, Integer>, CrudRepository<User, Integer>{
	Optional<User> findByEmail(String email);
}
