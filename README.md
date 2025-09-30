# Quiz Application 🎯

A **Spring Boot** monolithic architecture based Quiz Application that allows users to create quizzes, fetch quiz questions by category, and submit answers.  
This project demonstrates REST API development in Java with **Spring Boot** and **Maven**.

---

## ✨ Features
- Create a quiz with a category, number of questions, and title
- Fetch quiz questions dynamically
- Submit quiz responses and calculate results
- Uses layered architecture (`Controller → Service → Repository → Model`)
- Supports data initialization with `data.sql`

---

## 🏗️ Project Structure
```bash
Quiz-Application
┣ 📂 src
┃ ┣ 📂 main
┃ ┃ ┣ 📂 java
┃ ┃ ┃ ┗ 📂 com.krishna.Quiz.Application
┃ ┃ ┃ ┃ ┣ 📂 controller # REST Controllers
┃ ┃ ┃ ┃ ┣ 📂 model # Entity / DTO Classes
┃ ┃ ┃ ┃ ┣ 📂 repo # JPA Repositories
┃ ┃ ┃ ┃ ┣ 📂 service # Business Logic
┃ ┃ ┃ ┃ ┗ 📜 QuizApplication.java
┃ ┃ ┣ 📂 resources
┃ ┃ ┃ ┣ 📜 application.properties
┃ ┃ ┃ ┣ 📜 data.sql # Initial DB setup
┃ ┃ ┃ ┣ 📂 static # Static resources
┃ ┃ ┃ ┗ 📂 templates # Thymeleaf templates (if any)
┣ 📂 test # Unit & Integration tests
┗ 📜 pom.xml
```

---

## 🚀 Tech Stack
- **Java 17+**
- **Spring Boot**
- **Spring Data JPA / Hibernate**
- **Maven**
- ** MySQL **

---

## ⚡ API Endpoints

### Create a Quiz
```http
POST /quiz/create?category=Java&num=5&title=SpringBasics
```
### Get the questions of the quiz with given id
```http
GET /quiz/get/{id}
```
### Submit quiz
```http
POST /quiz/submit/{id}
Body: [
  { "id":"13", "response": "France" },
  { "id":"45", "response": "2" }
]
```
