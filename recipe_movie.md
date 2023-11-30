# Single Table Design Recipe Template

## 1. Extract nouns from the user stories or specification

```
As a person who loves movies,
So I can list all my favourite movies
I want to see a list of movies' titles.

As a person who loves movies,
So I can list all my favourite movies
I want to see a list of movies' genres.

As a person who loves movies,
So I can list all my favourite movies
I want to see a list of movies' release years.

```

```
Nouns:

movies, title, genres,release years

```

## 2. Infer the Table Name, Data type and Columns

TABLE: `movies`
| Record                | Properties   | data type   |
| --------------------- | -----------  |---------    |
| movie                 | id           | SERIAL      |
|                       | title        |  VARCHAR    |
|                       | genre        |  VARCHAR    |
|                       | release_year |  INTEGER    |


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
CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255),
  release_year INTEGER
);

```


## 5. Create the table

```bash
(use createdb first if DB does not exist)
psql -h 127.0.0.1 movie_directory_1 < movies_table.sql
```

