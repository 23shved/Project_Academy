package ua.lviv.shved.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ua.lviv.shved.domain.User;

public interface UserRepository extends JpaRepository<User, Integer>{

}
