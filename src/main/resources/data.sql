-- =============================
-- Quiz Questions Dataset (50)
-- =============================

INSERT INTO question (id, question, domain, level, option1, option2, option3, option4, answer) VALUES
-- General Knowledge
(1, 'What is the capital of France?', 'Geography', 'Easy', 'Paris', 'London', 'Berlin', 'Madrid', 'Paris'),
(2, 'Which planet is known as the Red Planet?', 'Astronomy', 'Easy', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Mars'),
(3, 'In which year did World War II end?', 'History', 'Medium', '1940', '1942', '1945', '1948', '1945'),
(4, 'Who wrote "Romeo and Juliet"?', 'Literature', 'Easy', 'William Shakespeare', 'Charles Dickens', 'Leo Tolstoy', 'Mark Twain', 'William Shakespeare'),
(5, 'Which ocean is the largest?', 'Geography', 'Easy', 'Atlantic Ocean', 'Pacific Ocean', 'Indian Ocean', 'Arctic Ocean', 'Pacific Ocean'),
(6, 'What is the national currency of Japan?', 'Economics', 'Easy', 'Yen', 'Dollar', 'Won', 'Ruble', 'Yen'),

-- Mathematics
(7, 'What is 2 + 2 * 2?', 'Mathematics', 'Easy', '6', '8', '4', '2', '6'),
(8, 'What is the square root of 144?', 'Mathematics', 'Easy', '10', '11', '12', '13', '12'),
(9, 'If x = 5, what is the value of 3x + 2?', 'Mathematics', 'Easy', '15', '17', '18', '20', '17'),
(10, 'What is the derivative of x^2?', 'Mathematics', 'Medium', 'x', '2x', 'x^2', '2', '2x'),
(11, 'What is the value of π (Pi) up to 2 decimal places?', 'Mathematics', 'Easy', '3.12', '3.14', '3.16', '3.15', '3.14'),
(12, 'What is 15% of 200?', 'Mathematics', 'Easy', '20', '25', '30', '35', '30'),

-- Computer Science
(13, 'Which data structure uses FIFO?', 'Computer Science', 'Medium', 'Stack', 'Queue', 'Tree', 'Graph', 'Queue'),
(14, 'Who developed Java?', 'Programming', 'Easy', 'James Gosling', 'Dennis Ritchie', 'Bjarne Stroustrup', 'Guido van Rossum', 'James Gosling'),
(15, 'Which language is primarily used for Android app development?', 'Programming', 'Easy', 'Java', 'Python', 'C++', 'Swift', 'Java'),
(16, 'What does HTML stand for?', 'Web Development', 'Easy', 'Hyper Text Markup Language', 'High Text Machine Language', 'Hyper Tabular Markup Language', 'None', 'Hyper Text Markup Language'),
(17, 'What is the default port for HTTP?', 'Computer Networks', 'Easy', '21', '22', '80', '443', '80'),
(18, 'Which keyword is used to inherit a class in Java?', 'Programming', 'Medium', 'this', 'super', 'extends', 'implements', 'extends'),
(19, 'What is the time complexity of binary search?', 'Algorithms', 'Medium', 'O(n)', 'O(log n)', 'O(n^2)', 'O(1)', 'O(log n)'),
(20, 'Which SQL command is used to remove a table?', 'Databases', 'Easy', 'DELETE', 'DROP', 'REMOVE', 'CLEAR', 'DROP'),

-- Science
(21, 'What is the boiling point of water?', 'Science', 'Easy', '90°C', '100°C', '110°C', '120°C', '100°C'),
(22, 'Which gas is essential for photosynthesis?', 'Science', 'Easy', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen', 'Carbon Dioxide'),
(23, 'Which vitamin is produced when skin is exposed to sunlight?', 'Biology', 'Easy', 'Vitamin A', 'Vitamin B', 'Vitamin C', 'Vitamin D', 'Vitamin D'),
(24, 'What is the chemical symbol for Gold?', 'Chemistry', 'Easy', 'Ag', 'Au', 'Gd', 'Go', 'Au'),
(25, 'Which part of the cell contains genetic material?', 'Biology', 'Medium', 'Nucleus', 'Mitochondria', 'Cytoplasm', 'Ribosome', 'Nucleus'),
(26, 'What is the speed of light?', 'Physics', 'Hard', '3 × 10^5 m/s', '3 × 10^8 m/s', '3 × 10^6 m/s', '3 × 10^7 m/s', '3 × 10^8 m/s'),

-- Web Development
(27, 'In HTML, which tag is used to insert an image?', 'Web Development', 'Easy', '<img>', '<image>', '<pic>', '<src>', '<img>'),
(28, 'Which CSS property changes text color?', 'Web Development', 'Easy', 'background-color', 'color', 'font-color', 'text-color', 'color'),
(29, 'What does CSS stand for?', 'Web Development', 'Easy', 'Cascading Style Sheets', 'Creative Style Sheets', 'Computer Style Sheets', 'Colorful Style Sheets', 'Cascading Style Sheets'),
(30, 'Which HTTP status code means "Not Found"?', 'Web Development', 'Easy', '200', '301', '404', '500', '404'),
(31, 'Which JavaScript method is used to print messages to the console?', 'Web Development', 'Easy', 'console.log()', 'print()', 'log.console()', 'echo()', 'console.log()'),
(32, 'Which HTML attribute specifies a unique identifier for an element?', 'Web Development', 'Medium', 'class', 'id', 'name', 'unique', 'id'),

-- Mixed
(33, 'Who is the current CEO of Tesla?', 'Business', 'Medium', 'Bill Gates', 'Jeff Bezos', 'Elon Musk', 'Mark Zuckerberg', 'Elon Musk'),
(34, 'Which is the smallest prime number?', 'Mathematics', 'Easy', '0', '1', '2', '3', '2'),
(35, 'In computing, what does "GUI" stand for?', 'Computer Science', 'Easy', 'Graphical User Interface', 'General User Instruction', 'Guided User Interface', 'Graphical Unified Interface', 'Graphical User Interface'),
(36, 'Which country is called the Land of the Rising Sun?', 'Geography', 'Easy', 'China', 'Japan', 'Thailand', 'India', 'Japan'),
(37, 'What is the largest mammal?', 'Biology', 'Easy', 'Elephant', 'Blue Whale', 'Giraffe', 'Hippopotamus', 'Blue Whale'),
(38, 'Which gas do humans exhale?', 'Science', 'Easy', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen', 'Carbon Dioxide'),
(39, 'Which programming language is known as the mother of all languages?', 'Programming', 'Medium', 'C', 'Java', 'Assembly', 'Python', 'C'),
(40, 'In which year was the first iPhone released?', 'Technology', 'Medium', '2005', '2006', '2007', '2008', '2007'),
(41, 'Which database is developed by Oracle Corporation?', 'Databases', 'Easy', 'MySQL', 'PostgreSQL', 'Oracle DB', 'MongoDB', 'Oracle DB'),
(42, 'What is the national animal of India?', 'General Knowledge', 'Easy', 'Lion', 'Tiger', 'Elephant', 'Peacock', 'Tiger'),
(43, 'Which is the fastest land animal?', 'Biology', 'Easy', 'Cheetah', 'Leopard', 'Horse', 'Tiger', 'Cheetah'),
(44, 'What is the freezing point of water?', 'Science', 'Easy', '0°C', '32°C', '-1°C', '0°F', '0°C'),
(45, 'In Java, which keyword is used to define a constant?', 'Programming', 'Medium', 'const', 'final', 'static', 'constant', 'final'),
(46, 'Which Indian city is known as the Silicon Valley of India?', 'Geography', 'Easy', 'Delhi', 'Mumbai', 'Bengaluru', 'Hyderabad', 'Bengaluru'),
(47, 'What does "HTTP" stand for?', 'Computer Networks', 'Easy', 'Hyper Transfer Text Protocol', 'Hyper Text Transfer Protocol', 'High Transfer Text Protocol', 'Hyperlink Transfer Text Protocol', 'Hyper Text Transfer Protocol'),
(48, 'Which company developed Windows OS?', 'Technology', 'Easy', 'Apple', 'Microsoft', 'IBM', 'Google', 'Microsoft');
