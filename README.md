# School Database Project

## Description

This is a SQL project that I made to manage school information.
The database stores information about students, teachers, and classes.

## Database Tables

### Students
- ID
- Student_name
- Birthdate_student
- Gender_student
- Academic_track
- GPA
- Study_level
- Std_email

### Teachers
- ID
- Teacher_name
- Birth_teacher
- Gender_teacher
- Email_teacher
- Office_number
- Class_id (foreign key from Classes table)

### Classes
- Class_id
- Class_name

### teacher_student (junction table)
- Student_id
- Teacher_id

### student_classes (junction table)
- Student_id
- Class_id

### Extra Tables
- `Topstudent`: students with GPA above 90.
- `failed_students`: students with GPA below 60.

## Database Relationships

- **Classes & Teachers (1:N):** A teacher teaches one class, but one class can have many teachers.
- **Teachers & Students (N:M):** Connected using the `teacher_student` table.
- **Students & Classes (N:M):** Connected using the `student_classes` table.

## What I Did in This Project

- Created the database.
- Created the tables.
- Displayed the available tables.
- Inserted data for students, teachers, and classes.
- Displayed the data in the tables.
- Sorted students by name (A to Z).
- Updated a student email.
- Updated a teacher office number.
- Added comments to explain the SQL commands.
- Made N:M relationships using junction tables.
- Made a 1:N relationship between classes and teachers.
- Created and ran the `student_info` stored procedure.
- Created, displayed, and deleted the `teacher_info` view.
- Created, checked, and deleted the `search_studentname` index.

## How to Run

1. Open MySQL Workbench.
2. Open the SQL file (`school_database.sql`).
3. Click the lightning icon to run it.
4. Check the results to see the tables, procedure, view, and index.

## Technologies

- SQL
- MySQL Workbench
