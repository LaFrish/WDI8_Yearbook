DROP TABLE IF EXISTS instructors;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS codeys;

CREATE TABLE instructors (
  id SERIAL PRIMARY KEY,
  name TEXT,
  img_url TEXT,
  squad_name TEXT,
  squad_id INT
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name TEXT,
  img_url TEXT,
  instructor_id INT,
  squad_id INT,
  github_url TEXT,
  portfolio_url TEXT,
  project1_url TEXT,
  project2_url TEXT,
  project3_url TEXT,
  project4_url TEXT,
  quote TEXT
);

CREATE TABLE codeys (
  id SERIAL PRIMARY KEY,
  student_name TEXT,
  award TEXT,
  student_id INT
);
