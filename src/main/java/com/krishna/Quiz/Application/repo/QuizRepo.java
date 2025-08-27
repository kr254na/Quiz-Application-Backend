package com.krishna.Quiz.Application.repo;

import com.krishna.Quiz.Application.model.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuizRepo extends JpaRepository<Quiz,Integer>
{
}
