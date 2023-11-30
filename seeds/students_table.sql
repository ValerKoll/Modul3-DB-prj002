
-- First, we must delete (drop) all our tables
DROP TABLE IF EXISTS students;
DROP SEQUENCE IF EXISTS students_id_seq;

-- Then, we recreate them
CREATE SEQUENCE IF NOT EXISTS students_id_seq;
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);