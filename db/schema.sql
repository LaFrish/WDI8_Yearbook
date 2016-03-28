DROP TABLE IF EXISTS instructors;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS codeys;

CREATE TABLE instructors (
  id SERIAL PRIMARY KEY,
  name TEXT,
  squad_name TEXT
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name TEXT,
  img_url TEXT,
  instructor_id INT
);

CREATE TABLE codeys (
  id SERIAL PRIMARY KEY,
  student_name TEXT,
  award TEXT,
  student_id INT
);
