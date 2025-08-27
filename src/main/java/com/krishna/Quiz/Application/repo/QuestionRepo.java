package com.krishna.Quiz.Application.repo;

import com.krishna.Quiz.Application.model.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionRepo extends JpaRepository<Question,Integer>
{
    List<Question> findByDomain(String category);
    @Query(value="Select * from question q where q.domain=:category order by rand() limit :numQ;",nativeQuery = true)
    List<Question> findRandomQuestionByCategory(@Param("category") String category, @Param("numQ")int numQ);
}