PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE FROM students;
DELETE FROM courses;

-- TODO 1:
-- Insert 3 courses.
-- Remember:
-- course_id is a number.
-- course_name must be present.
-- credits must be greater than 0.
-- Hint: INSERT INTO table (columns) VALUES (row 1), (row 2), ...

INSERT INTO courses (course_id, course_name, credits) VALUES
    (1, 'Java Basics', 14),
    (2, 'Ukrainian language', 4),
    (3, 'Databases', 9);


-- TODO 2:
-- Insert 5 students.
-- Remember:
-- id is a number.
-- name must be present.
-- email must be unique.
-- age must be 18 or older.
-- course_id must exist in the courses table.

INSERT INTO students (id, name, email, age, course_id) VALUES
      (1, 'Taras Shevchenko', 'taras@example.com', 47, 1),
      (2, 'Lesya Ukrainka', 'lesya@example.com', 42, 1),
      (3, 'Vasyl Stus', 'vasyl@example.com', 47, 2),
      (4, 'Andrii Skriabin', 'andrii@example.com', 46, 2),
      (5, 'Ivan Franko', 'ivan@example.com', 59, 2);

-- TODO 3:
-- Uncomment this to test a foreign key error.
-- This should fail because course_id 999 does not exist.
 INSERT INTO students (id, name, email, age, course_id)
 VALUES (6, 'Invalid Course Student', 'invalid@example.com', 20, 999);

