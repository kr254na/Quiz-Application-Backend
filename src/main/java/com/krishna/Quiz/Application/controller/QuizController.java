package com.krishna.Quiz.Application.controller;
import com.krishna.Quiz.Application.model.Question;
import com.krishna.Quiz.Application.model.QuestionWrapper;
import com.krishna.Quiz.Application.model.Quiz;
import com.krishna.Quiz.Application.model.Response;
import com.krishna.Quiz.Application.service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
@RestController
@RequestMapping("quiz")
public class QuizController
{
    @Autowired
    private QuizService service;
    @PostMapping("create")
    public ResponseEntity<Quiz> createQuiz(@RequestParam String category, @RequestParam int numQ, @RequestParam String title)
    {
        return service.createQuiz(category,numQ,title);
    }
    @GetMapping("get/{id}")
    public ResponseEntity<List<QuestionWrapper>> getQuizQuestion(@PathVariable int id)
    {
        return service.getQuizQuestions(id);
    }
    @PostMapping("submit/{id}")
    public ResponseEntity<Integer> submitQuiz(@PathVariable Integer id, @RequestBody List<Response> response)
    {
        return service.calculateResult(id,response);
    }
}
