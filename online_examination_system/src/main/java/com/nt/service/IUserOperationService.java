package com.nt.service;

import java.util.List;
import java.util.Optional;

import com.nt.model.User;

public interface IUserOperationService {

	public List<User> getAllUsers();
	
	public String registerUser(User user);
	public Optional<User> getLoginDetails(String username,String password);
	void findByUsername(String username,Integer score);
	void sendMail(String mail,Integer score)throws Exception;
	List<User> findUser(User user,boolean order,String ...prop);

	public User editUserByid(int id);

	public String editUser(User user);
	
	public String deleteUserById(Integer id);
}

