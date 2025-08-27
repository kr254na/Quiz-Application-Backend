package com.krishna.Quiz.Application.service;

import com.krishna.Quiz.Application.model.Question;
import com.krishna.Quiz.Application.repo.QuestionRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class QuestionService
{
    @Autowired
    private QuestionRepo repo;
    public ResponseEntity<List<Question>> getAllQuestions()
    {
        try {
            return new ResponseEntity<>(repo.findAll(), HttpStatus.OK);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return new ResponseEntity<>(new ArrayList<>(),HttpStatus.BAD_REQUEST);
    }
    public ResponseEntity<List<Question>> getQuestionsByDomain(String domain)
    {
        try
        {
            return new ResponseEntity<>(repo.findByDomain(domain),HttpStatus.OK);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return new ResponseEntity<>(new ArrayList<>(),HttpStatus.BAD_REQUEST);
    }
    public ResponseEntity<Question> addQuestion(Question question)
    {
        try {
            return new ResponseEntity<>(repo.save(question), HttpStatus.CREATED);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return new ResponseEntity<>(new Question(),HttpStatus.BAD_REQUEST);
    }
    public ResponseEntity<Optional<Question>> deleteQuestion(int id)
    {
        try {
            Optional<Question> question = repo.findById(id);
            question.ifPresent(q -> repo.deleteById(id));
            return new ResponseEntity<>(question, HttpStatus.OK);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return new ResponseEntity<>(Optional.empty(),HttpStatus.BAD_REQUEST);
    }
}
