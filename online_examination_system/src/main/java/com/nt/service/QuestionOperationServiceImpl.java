package com.nt.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.model.Admin;
import com.nt.model.Question;
import com.nt.repository.QuestionsRepository;

@Service
public class QuestionOperationServiceImpl implements IQuestionOperationService {

	@Autowired
	private QuestionsRepository repo;
	
	@Override
	public List<Question> getQuestions(String subject, String diff) {
		
		return repo.findBySubjectAndDifficulty(subject, diff);
	}
	@Override
	public List<Question> findByIdIn(List<Integer> ids) {
		
		return repo.findByIdIn(ids);
	}
}
