package com.nt.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.model.Admin;
import com.nt.model.User;
import com.nt.repository.AdminOperationRepository;
import com.nt.repository.UserOperationRepository;

@Service
public class AdminOperationServiceImpl implements IAdminOperationService {

	@Autowired
	private AdminOperationRepository repo;
	@Autowired
	private UserOperationRepository repo1;
	@Override
	public Optional<Admin> getLoginDetails(String username, String password) {
		Optional<Admin> opt=repo.findByUsernameAndPassword(username, password);
		
		return opt;
	}
	
	
}
