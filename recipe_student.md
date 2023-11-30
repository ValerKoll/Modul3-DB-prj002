# Single Table Design Recipe Template

## 1. Extract nouns from the user stories or specification

```
As a coach
So I can get to know all students
I want to see a list of students' names.

As a coach
So I can get to know all students
I want to see a list of students' cohorts.

```

```
Nouns:

students, names, cohorts

```

## 2. Infer the Table Name, Data type and Columns

TABLE: `students`
| Record                | Properties | data type   |
| --------------------- | ---------- |---------    |
| student               | id         | SERIAL      |
|                       | name       |  VARCHAR    |


TABLE: `cohorts`
| Record                | Properties   |data type  |
| --------------------- | -------------|-----      |
| cohort                | ID           | SERIAL    |
|                       | cohort_name  |  VARCHAR  |
|                       | student_id   |  INT      |



## 3. Write the SQL

```sql
---use these SQL cmd as common header:
-- First, we must delete (drop) all our tables
DROP TABLE IF EXISTS ...;
DROP SEQUENCE IF EXISTS ..._id_seq;

-- Then, we recreate them
CREATE SEQUENCE IF NOT EXISTS ..._id_seq;
[...]
----end common SQL----


--table1
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

--table2
CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY, 
  cohort_name VARCHAR(255),
  student id INTEGER
);

```


## 5. Create the table

```bash
(use createdb first if DB does not exist)
psql -h 127.0.0.1 student_directory_1 < students_table.sql
psql -h 127.0.0.1 student_directory_1 < cohorts_table.sql
```

