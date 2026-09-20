# School Database Project

## Description

This project is a SQL database system for managing school information.

The database is designed to store and manage information about students, teachers, and subjects.

## Database Tables

### Students

The Students table contains:
- ID
- Student Name
- Birthdate_student
- Gender_student
- Email_student
- Study Level
- Academic_Track 
- GPA

### Teachers

The Teachers table contains:
- ID
- Teacher_name
- Birth_teacher
- Gender_teacher
- Email_teacher
- Office_number

### Classes

The Classes table contains:
- Class_id
- Class_name


## Database Relationships

* **Subjects & Teachers (1:N):** A teacher teaches one subject, while a subject can be taught by multiple teachers.
* **Teachers & Students (N:M):** Linked using `teacher_students` junction table.
* **Students & Subjects (N:M):** Linked using `student_subjects` junction table.


## Project Requirements

* Creating the database.
* Creating tables.
* Displaying available tables.
* Inserting data for students, teachers, and subjects.
* Displaying table contents.
* Sorting students by name in ascending order.
* Updating student email.
* Updating teacher office number.
* Using comments to explain SQL commands.
* Implementing N:M relationships using junction tables (teacher_students, student_subjects).
* Implementing 1:N relationship between subjects and teachers.
* Creating and executing the `student_info` Stored Procedure.
* Creating, displaying, and dropping the `teacher_info` View.
* Creating, verifying, and dropping the `search_studentname` Index.


## Technologies

- SQL
- MySQL Workbench
