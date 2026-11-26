PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE FROM students;
DELETE FROM courses;

INSERT INTO courses (course_id, course_name, credits)
VALUES
    (1, 'Java', 5),
    (2, 'Databases', 3),
    (3, 'Web Development', 4);

INSERT INTO students (id, name, email, age, course_id)
VALUES
    (1, 'Anna', 'anna@example.com', 19, 1),
    (2, 'Janis', 'janis@example.com', 22, 1),
    (3, 'Liga', 'liga@example.com', 25, 2),
    (4, 'Peteris', 'peteris@example.com', 18, 2),
    (5, 'Marta', 'marta@example.com', 21, 1);

-- TODO 3:
-- Uncomment this to test a foreign key error.
-- This should fail because course_id 999 does not exist.
-- INSERT INTO students (id, name, email, age, course_id)
-- VALUES (6, 'Invalid Course Student', 'invalid@example.com', 20, 999);
