DROP TABLE IF EXISTS instructors;
DROP TABLE IF EXISTS students;

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
