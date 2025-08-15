package com.nt.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.nt.model.User;
import com.nt.repository.UserOperationRepository;

import jakarta.mail.internet.MimeMessage;

@Service
public class UserOperationServiceImpl implements IUserOperationService {

	@Autowired
	private JavaMailSender sender;

	@Value("{spring.mail.username}")
	private String fromMail;
	@Autowired
	private UserOperationRepository repo;
	
	
	@Override
	public List<User> getAllUsers() {
		
		return repo.findAll();
	}
	@Override
	public String registerUser(User user) {
		String result=repo.save(user).getId()+" User Registered...";
		return result;
	}
	
	@Override
	public Optional<User> getLoginDetails(String username, String password) {
		return repo.findByUsernameAndPassword(username, password);
	}
	
	@Override
	public void findByUsername(String username, Integer score) {
		User user=repo.findByUsername(username);
		user.setScore(score);
		repo.save(user);
		
	}
	
	@Override
	public void sendMail(String username, Integer score) throws Exception {
		
		User user=repo.findByUsername(username);
		String emailTo=user.getMail();
		MimeMessage message = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, false);
		helper.setFrom(fromMail);
		helper.setTo(emailTo);
		String subject;
	    String body;

	    if (score < 13) {
	        subject = "Low Score Alert! Your Score: " + score;
	        body = "Aree...Bhenchod_!!! Chud gaye guru... Gandu Abhyas krr....Your Score: " + score;
	    } else {
	        subject = "Great Job! Your Score: " + score;
	        body = "Mast Score Ahe zavnya.....atta spring/spring Boot chalu krr....Your Score: " + score;
	    }

	    helper.setSubject(subject);
	    helper.setText(body, false);
		helper.setSentDate(new Date());
		sender.send(message);
	}
	@Override
	public List<User> findUser(User user, boolean order, String... prop) {
		if(user.getUsername().equals("")||user.getUsername().length()==0) {
			user.setUsername(null);
		}
		if(user.getPassword().equals("")||user.getPassword().length()==0) {
			user.setPassword(null);
		}
		if(user.getMail().equals("")||user.getMail().length()==0) {
			user.setMail(null);
		}
		if(user.getScore()==null||user.getScore()==0) {
			user.setScore(null);
		}
		
		Example<User> example=Example.of(user);
		Sort sort=Sort.by(order?Direction.ASC:Direction.DESC, prop);
		return repo.findAll(example, sort);
	}

	@Override
	public User editUserByid(int id) {
		
		Optional<User> user= repo.findById(id);
		return user.get();
	}
	
	@Override
	public String editUser(User user) {
		return repo.save(user).getId()+" User Updated...";
	}
	
	@Override
	public String deleteUserById(Integer id) {
		Optional<User> opt= repo.findById(id);
		if(opt.isPresent()) {
			repo.delete(opt.get());
		}
		return "deleted user with Id :: "+id;
	}
}
