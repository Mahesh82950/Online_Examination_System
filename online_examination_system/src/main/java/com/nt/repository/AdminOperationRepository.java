package com.nt.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nt.model.Admin;

public interface AdminOperationRepository extends JpaRepository<Admin, Integer> {
	Optional<Admin> findByUsernameAndPassword(String username, String password);

}
