package com.nt.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nt.model.User;

public interface UserOperationRepository extends JpaRepository<User, Integer> {

	Optional<User> findByUsernameAndPassword(String username, String password);
	User findByUsername(String username);
	Optional<User> findByMail(String mail);
	
}