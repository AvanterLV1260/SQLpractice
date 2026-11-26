PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;

-- TODO 1:
CREATE TABLE courses(
course_id INTEGER primary key,
course_name STRING NOT NULL,
credits INTEGER check ( credits>0 )
);

-- TODO 2:
CREATE TABLE students(
id INTEGER primary key,
name TEXT NOT NULL,
email TEXT NOT NULL UNIQUE,
age INTEGER CHECK ( age>=18 ),
course_id INTEGER NOT NULL,
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


