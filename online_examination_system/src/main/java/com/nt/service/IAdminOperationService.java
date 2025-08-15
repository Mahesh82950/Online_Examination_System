package com.nt.service;

import java.util.Optional;

import com.nt.model.Admin;

public interface IAdminOperationService {

	public Optional<Admin> getLoginDetails(String username,String password);
	
	
}
