package com.krishna.Quiz.Application.service;

import com.krishna.Quiz.Application.model.Question;
import com.krishna.Quiz.Application.model.QuestionWrapper;
import com.krishna.Quiz.Application.model.Quiz;
import com.krishna.Quiz.Application.model.Response;
import com.krishna.Quiz.Application.repo.QuestionRepo;
import com.krishna.Quiz.Application.repo.QuizRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class QuizService
{
    @Autowired
    QuizRepo quizRepo;
    @Autowired
    QuestionRepo questionRepo;

    public ResponseEntity<Quiz> createQuiz(String category, int numQ, String title)
    {
        try
        {
            List<Question> questions=questionRepo.findRandomQuestionByCategory(category,numQ);
            System.out.println(questions);
            Quiz quiz=new Quiz();
            quiz.setTitle(title);
            quiz.setQuestions(questions);
            System.out.println(quiz);
            return new ResponseEntity<>(quizRepo.save(quiz), HttpStatus.CREATED);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    public ResponseEntity<List<QuestionWrapper>> getQuizQuestions(int id)
    {
        try
        {
            Optional<Quiz> quiz=quizRepo.findById(id);
            List<Question> questionsFromDb=quiz.get().getQuestions();
            List<QuestionWrapper> questionsForUser= new ArrayList<>();
            for(Question q:questionsFromDb)
            {
                QuestionWrapper qw=new QuestionWrapper(q.getId(),q.getQuestion(),q.getOption1(),q.getOption2(),q.getOption3(),q.getOption4());
                questionsForUser.add(qw);
            }
            return new ResponseEntity<>(questionsForUser,HttpStatus.OK);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    public ResponseEntity<Integer> calculateResult(Integer id, List<Response> responses)
    {
        try
        {
            Quiz quiz=quizRepo.findById(id).get();
            List<Question> questions=quiz.getQuestions();
            int right=0;
            int i=0;
            for(Response response:responses)
            {
                if(response.getResponse().equals(questions.get(i).getAnswer()))
                    right++;
                i++;
            }
            return new ResponseEntity<>(right,HttpStatus.OK);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}
