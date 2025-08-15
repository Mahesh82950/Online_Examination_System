package com.nt.controller;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.model.Admin;
import com.nt.model.Question;
import com.nt.model.User;
import com.nt.service.IAdminOperationService;
import com.nt.service.IQuestionOperationService;
import com.nt.service.IUserOperationService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/user/api")
public class UserOperationController {

	@Autowired
	private IUserOperationService service;

	@Autowired
	private IAdminOperationService service2;
	
	@Autowired
	private IQuestionOperationService service3;

	@GetMapping("/")
	public String getHomePage() {
		return "section";
	}
	@GetMapping("/home")
	public String home() {
		return "home";
	}

	@GetMapping("/login_user")
	public String userLoginGet() {
		return "user_login";
	}
	@PostMapping("/login_user")
	public String userLoginPost(@ModelAttribute User user,HttpSession session) {
		String username = user.getUsername();
		String password = user.getPassword();
//		System.out.println(username+" "+password);
		session.setAttribute("username", username);
		Optional<User> opt = service.getLoginDetails(username, password);
		if (opt.isPresent()) {
			return "subjectAndDefficulty";
		}
		return "userError";
	}

	@GetMapping("/admin_login")
	public String adminLoginGet(@ModelAttribute Admin admin) {
		return "admin_login";
	}

	@PostMapping("/admin_login")
	public String adminLoginPost(@ModelAttribute Admin admin) {
		String username = admin.getUsername();
		String password = admin.getPassword();
		Optional<Admin> opt = service2.getLoginDetails(username, password);
//		System.out.println(username+" "+password);
		if (opt.isPresent()) {
			System.out.println("Login-===========");
				
			return "home";
		}
		return "adminError";
	}

	@GetMapping("/register_user")
	public String userRegisterGet(@ModelAttribute User user) {
		return "user_register";
	}

	@PostMapping("/user_register")
	public String userRegisterPost(@ModelAttribute User user) {
		service.registerUser(user);
		return "redirect:login_user";
	}

	@GetMapping("/fetchAllUsers")
	public String getAllUsers(HttpSession session) {
		List<User> list = service.getAllUsers();
		session.setAttribute("userData", list);
		return "getAllUsers";
	}
	
	@GetMapping("/question")
	public String getQuestionGet(@RequestParam String subject, @RequestParam String difficulty,HttpSession session) {
//		System.out.println(subject+" "+difficulty);
		session.setAttribute("selectedSubject", subject);
        session.setAttribute("selectedDifficulty", difficulty);
        List<Question> list=service3.getQuestions(subject, difficulty);
        List<Integer> ids = list.stream()
                .map(q -> q.getId()) 
                .collect(Collectors.toList());
        Collections.shuffle(ids);
        List<Integer> randomids=ids.stream().limit(15).collect(Collectors.toList());
        List<Question> list2=service3.findByIdIn(randomids);
        Collections.shuffle(list2);
        session.setAttribute("questions", list2);
		return "exam-form";
	}
	
	@PostMapping("/submit_exam")
	public String submitExam(@RequestParam Map<String, String> answers, HttpSession session) {
		Integer score=0;
		@SuppressWarnings("unchecked")
		List<Question> list=(List<Question>) session.getAttribute("questions");
		if(list!=null) {
		for (Question q : list) {
		String answer=answers.get("answer_" + q.getId());
		
//		System.out.println(answer+"  "+q.getCorrectOption());
		if(q!=null) {
		if(answer.equalsIgnoreCase(q.getCorrectOption())){
			score++;
		}
		}
		}
		}
		String username=(String) session.getAttribute("username");
		service.findByUsername(username, score);
		session.setAttribute("score", score);
		session.setAttribute("totalQuestions", list.size());
		return "submit";
	}
	
	@GetMapping("/send")
	public String sendMail(HttpSession session) throws Exception {
		System.out.println("UserOperationController.sendMail()");
		String username=(String) session.getAttribute("username");
		Integer score=(Integer) session.getAttribute("score");
		service.sendMail(username, score);
		return "thankyou";
		
	}
	@GetMapping("/add")
	public String addUser(@ModelAttribute User user) {
		return "user_register";
	}
	@GetMapping("/search")
	public String searchUserForm(@ModelAttribute("user") User user) {
		return "search";
	}
	@PostMapping("/search")
	public String searchUserSubmit(@ModelAttribute("user") User user, HttpSession session) {

		List<User> list = service.findUser(user, true, "score");
		session.setAttribute("userData", list);
		return "getAllUsers";
	}
	
	@GetMapping("/edit")
	public String editEmployeeForm(@RequestParam int id, @ModelAttribute("user") User user) {
		User user1 = service.editUserByid(id);
		BeanUtils.copyProperties(user1, user);
		return "edit_user";
	}

	@PostMapping("/edit")
	public String editEmployeeSubmit(HttpSession session, @ModelAttribute("user") User user) {
		 service.editUser(user);
		return "redirect:fetchAllUsers";
	}
	
	@GetMapping("/delete")
	public String deleteUser(@RequestParam int id) {
		service.deleteUserById(id);
		return "redirect:fetchAllUsers";
	}
	
}
