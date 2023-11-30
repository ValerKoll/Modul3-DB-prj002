-- First, we must delete (drop) all our tables
DROP TABLE IF EXISTS cohorts;
DROP SEQUENCE IF EXISTS cohorts_id_seq;

-- Then, we recreate them
CREATE SEQUENCE IF NOT EXISTS cohorts_id_seq;
CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY, 
  cohort_name VARCHAR(255),
  student_id INTEGER
);

INSERT INTO cohorts (cohort_name, student_id) VALUES ('Oc1', 1);
INSERT INTO cohorts (cohort_name, student_id) VALUES ('RS023', 2);