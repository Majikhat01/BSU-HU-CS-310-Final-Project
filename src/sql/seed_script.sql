/*
  Run this SQL file to delete existing data and populate your database with
  sample data.

  NOTE: This will DELETE ALL data in your final project tables.
*/
USE cs_hu_310_final_project;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE grades;
TRUNCATE TABLE class_registrations;
TRUNCATE TABLE class_sections;
TRUNCATE TABLE instructors;
TRUNCATE TABLE academic_titles;
TRUNCATE TABLE students;
TRUNCATE TABLE classes;
TRUNCATE TABLE terms;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO classes(class_id, name, description, code, maximum_students)
VALUES (1,
        'Introduction to Database Usage',
        'Application-intensive course on database systems. Topics covered in this course include: data modeling; insertion, deletion, and update statements; basic SQL queries including queries with negation; and database APIs. A Hatchery Unit (HU) course is a short course to develop specific professional skills for computer science. PREREQ: CS 221. Class Notes: REMOTE COURSE: Regular access to a computer with reliable/high-speed Internet access is required. Instructor may hold synchronous sessions (using Zoom, Hangouts, etc.) at scheduled times and provide course content and communicate with students through Blackboard, email, or other technologies.',
        'CS-HU 310',
        32),
       (2,
        'COLLEGE ALGEBRA',
        'Emphasis on the concept of functions as mathematical entities; domain, range, algebraic operations, composition, inverses, graphing. Polynomial functions, division of polynomials, roots, factor theorem, complex numbers, fundamental theorem of algebra. Rational functions and asymptotes. Logarithmic and exponential functions. Multi-level algebraic manipulation of functional expressions – e.g., difference quotients. Conic sections and other topics from analytic geometry as time permits. Mathematical modeling based on Business and Science applications using algebraic functions will be prominent.',
        'MATH 143',
        32),
       (3,
        'Test',
        'This class is used for testing our databases!',
        'test101',
        3);


INSERT INTO students(student_id, first_name, last_name, birthdate)
VALUES (1,
        'Christopher',
        'Davidson',
        NOW() - INTERVAL FLOOR(RAND() * 25) YEAR),
       (2,
        'Mary',
        'Tatum',
        NOW() - INTERVAL FLOOR(RAND() * 25) YEAR),
       (3,
        'Kim',
        'Walls',
        NOW() - INTERVAL FLOOR(RAND() * 25) YEAR);


INSERT INTO academic_titles(academic_title_id, title)
VALUES (1,
        'Adjunct Instructor'),
       (2,
        'Graduate Teaching Assistant'),
       (3,
        'Visiting Professor'),
       (4,
        'Assistant Professor'),
       (5,
        'Associate Professor'),
       (6,
        'Full Professor'),
       (7,
        'Endowed Professor'),
       (8,
        'Distinguished Professor'),
       (9,
        'Administrator'),
       (10,
        'Professor Emeritus ');


INSERT INTO instructors(instructor_id, first_name, last_name, academic_title_id)
VALUES (1,
        'Arthur',
        'Putnam',
        1),
       (2,
        'Helen',
        'Johnson',
        3),
       (3,
        'Brent',
        'Miller',
        8);


INSERT INTO terms(term_id, name)
VALUES (1, CONCAT('FALL', ' ', YEAR(NOW()))),
       (2, CONCAT('SPRING', ' ', YEAR(NOW()))),
       (3, CONCAT('FALL', ' ', YEAR(NOW() - INTERVAL 1 YEAR))),
       (4, CONCAT('SPRING', ' ', YEAR(NOW() - INTERVAL 1 YEAR)));


INSERT INTO class_sections(class_section_id, class_id, instructor_id, term_id)
VALUES (1, 1, 1, 1),
       (2, 1, 1, 2),
       (3, 2, 2, 2),
       (4, 2, 3, 1),
       (5, 2, 2, 3),
       (6, 3, 3, 4);


INSERT INTO grades(grade_id, letter_grade)
VALUES (1, 'A'),
       (2, 'B'),
       (3, 'C'),
       (4, 'D'),
       (5, 'F');


INSERT INTO class_registrations(class_registration_id, class_section_id, student_id, grade_id)
VALUES (1, 1, 1, 1),
       (2, 1, 2, 2),
       (3, 1, 3, 3),
       (4, 3, 1, 2),
       (5, 4, 1, 1),
       (6, 6, 1, 1),
       (7, 6, 2, 3),
       (8, 6, 3, NULL);



