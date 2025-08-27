package com.krishna.Quiz.Application.controller;

import com.krishna.Quiz.Application.model.Question;
import com.krishna.Quiz.Application.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("question")
public class QuestionController
{
    @Autowired
    QuestionService service;
    @GetMapping("all")
    public ResponseEntity<List<Question>> getAllQuestions()
    {
        return service.getAllQuestions();
    }
    @GetMapping("domain/{domain}")
    public ResponseEntity<List<Question>> getQuestionsByCategory(@PathVariable String domain)
    {
        return service.getQuestionsByDomain(domain);
    }
    @PostMapping("new")
    public ResponseEntity<Question> addQuestion(@RequestBody Question question)
    {
        return service.addQuestion(question);
    }
    @PutMapping("update")
    public ResponseEntity<Question> updateQuestion(@RequestBody Question question)
    {
        return service.addQuestion(question);
    }
    @DeleteMapping("{id}")
    public ResponseEntity<Optional<Question>> deleteQuestion(@PathVariable int id)
    {
        return service.deleteQuestion(id);
    }
}
