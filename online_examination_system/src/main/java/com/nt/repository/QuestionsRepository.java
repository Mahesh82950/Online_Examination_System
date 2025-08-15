package com.nt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nt.model.Question;

public interface QuestionsRepository extends JpaRepository<Question, Integer> {
	List<Question> findBySubjectAndDifficulty(String subject, String difficulty);

	List<Question> findByIdIn(List<Integer> ids);
}
