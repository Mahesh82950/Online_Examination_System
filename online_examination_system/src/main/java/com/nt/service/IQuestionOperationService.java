package com.nt.service;

import java.util.List;
import java.util.Optional;

import com.nt.model.Admin;
import com.nt.model.Question;

public interface IQuestionOperationService {

	public List<Question> getQuestions(String subject,String diff);
	
	List<Question> findByIdIn(List<Integer> ids);

}
