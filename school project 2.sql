use school;
drop table  if exists students;
/*____________________________________________________انشاء جدول الطلاب_______________________________________________________________*/
CREATE TABLE students (
    id INT PRIMARY KEY,
    student_name VARCHAR(225),
    birthdate_student DATE,
    gender_student CHAR(1)CHECK (gender_student IN ('F', 'M')),
    academic_track VARCHAR(20) CHECK (academic_track IN ('humanity', 'scientific')),
    GPA DECIMAL(5,2) CHECK (GPA >= 0 AND GPA <= 100),
    study_level INT CHECK (study_level BETWEEN 1 AND 6)
);/*-ادخال بيانات 30 طالب-*/
INSERT INTO students VALUES (1,'Adam','2003-01-15','M','scientific',85.5,1);
INSERT INTO students VALUES (2,'Omar','2003-02-20','M','humanity',78.4,2);
INSERT INTO students VALUES (3,'Ahmad','2003-03-12','M','scientific',91.2,3);
INSERT INTO students VALUES (4,'Lina','2003-04-08','F','humanity',87.6,2);
INSERT INTO students VALUES (5,'Sara','2003-05-17','F','scientific',93.5,4);
INSERT INTO students VALUES (6,'Yazan','2003-06-25','M','scientific',82.7,3);
INSERT INTO students VALUES (7,'Noor','2003-07-10','F','humanity',89.3,1);
INSERT INTO students VALUES (8,'Zaid','2003-08-14','M','scientific',76.8,2);
INSERT INTO students VALUES (9,'Malak','2003-09-21','F','scientific',95.1,4);
INSERT INTO students VALUES (10,'Anas','2003-10-05','M','humanity',81.9,3);
INSERT INTO students VALUES (11,'Dana','2003-11-18','F','scientific',90.4,2);
INSERT INTO students VALUES (12,'Kareem','2003-12-09','M','scientific',84.6,1);
INSERT INTO students VALUES (13,'Aya','2004-01-22','F','humanity',88.7,3);
INSERT INTO students VALUES (14,'Laith','2004-02-16','M','scientific',79.5,2);
INSERT INTO students VALUES (15,'Maya','2004-03-27','F','humanity',92.8,4);
INSERT INTO students VALUES (16,'Sami','2004-04-11','M','scientific',86.3,3);
INSERT INTO students VALUES (17,'Jana','2004-05-19','F','humanity',80.6,1);
INSERT INTO students VALUES (18,'Wasan','2003-11-14','F','humanity',65,4);
INSERT INTO students VALUES (19,'Razan','2003-12-14','F','scientific',55.5,4);
INSERT INTO students VALUES (20,'Fatima','2003-10-16','F','humanity',88.9,4);
INSERT INTO students VALUES (21,'Raya','2003-07-27','F','scientific',88.3,4);
INSERT INTO students VALUES (22,'Toleen','2003-07-24','F','humanity',89.9,3);
INSERT INTO students VALUES (23,'Rahaf','2003-07-29','F','scientific',90.9,2);
INSERT INTO students VALUES (24,'Ameera','2003-07-20','F','humanity',66,2);
INSERT INTO students VALUES (25,'Tareq','2003-07-21','M','scientific',54.8,2);
INSERT INTO students VALUES (26,'Hala','2003-07-05','F','scientific',88.9,4);
INSERT INTO students VALUES (27,'Ibrahim','2003-07-07','M','scientific',88.5,4);
INSERT INTO students VALUES (28,'Hind','2001-07-22','F','scientific',88.2,3);
INSERT INTO students VALUES (29,'Amer','2004-07-24','M','scientific',81.8,3);
INSERT INTO students VALUES (30,'Hanan','2003-07-23','F','scientific',94.66,3);

/*-اضافة عمود البريد الالكنروني لانه تم نسيانه-*/
alter table students
add column std_email varchar(100);

UPDATE students SET std_email = 'adam@gmail.com' WHERE id = 1;
UPDATE students SET std_email = 'omar@gmail.com' WHERE id = 2;
UPDATE students SET std_email = 'ahmad@gmail.com' WHERE id = 3;
UPDATE students SET std_email = 'lina@gmail.com' WHERE id = 4;
UPDATE students SET std_email = 'sara@gmail.com' WHERE id = 5;
UPDATE students SET std_email = 'yazan@gmail.com' WHERE id = 6;
UPDATE students SET std_email = 'noor@gmail.com' WHERE id = 7;
UPDATE students SET std_email = 'zaid@gmail.com' WHERE id = 8;
UPDATE students SET std_email = 'malak@gmail.com' WHERE id = 9;
UPDATE students SET std_email = 'anas@gmail.com' WHERE id = 10;
UPDATE students SET std_email = 'dana@gmail.com' WHERE id = 11;
UPDATE students SET std_email = 'kareem@gmail.com' WHERE id = 12;
UPDATE students SET std_email = 'aya@gmail.com' WHERE id = 13;
UPDATE students SET std_email = 'laith@gmail.com' WHERE id = 14;
UPDATE students SET std_email = 'maya@gmail.com' WHERE id = 15;
UPDATE students SET std_email = 'sami@gmail.com' WHERE id = 16;
UPDATE students SET std_email = 'jana@gmail.com' WHERE id = 17;
UPDATE students SET std_email = 'wasan@gmail.com' WHERE id = 18;
UPDATE students SET std_email = 'razan@gmail.com' WHERE id = 19;
UPDATE students SET std_email = 'fatima@gmail.com' WHERE id = 20;
UPDATE students SET std_email = 'raya@gmail.com' WHERE id = 21;
UPDATE students SET std_email = 'toleen@gmail.com' WHERE id = 22;
UPDATE students SET std_email = 'rahaf@gmail.com' WHERE id = 23;
UPDATE students SET std_email = 'ameera@gmail.com' WHERE id = 24;
UPDATE students SET std_email = 'tareq@gmail.com' WHERE id = 25;
UPDATE students SET std_email = 'hala@gmail.com' WHERE id = 26;
UPDATE students SET std_email = 'ibrahim@gmail.com' WHERE id = 27;
UPDATE students SET std_email = 'hind@gmail.com' WHERE id = 28;
UPDATE students SET std_email = 'amer@gmail.com' WHERE id = 29;
UPDATE students SET std_email = 'hanan@gmail.com' WHERE id = 30;
update students set std_email='amer jaber34@gmail.com'where id=29;
/*-لرؤية العمود الذي تم انشاؤه-*/
select *from students;

/*--ترتيب اسماء الطلاب تصاعديا -*/
select *from students order by student_name asc;
drop table if exists teachers;
/*_________________________________________________انشاء جدول للمعلمين  ______________________________________________________________*/
CREATE TABLE teachers (
    id INT PRIMARY KEY,
    teacher_name VARCHAR(225),
    birth_teacher DATE,
    gender_teacher VARCHAR(10)CHECK (gender_teacher IN ('M', 'F')),
    email_teacher CHAR(30),
    office_number VARCHAR(10)
);
INSERT INTO teachers VALUES(1, 'Ali', '1980-03-15', 'M', 'ali@gmail.com', '101');
INSERT INTO teachers VALUES(2, 'Sara', '1985-07-22', 'F', 'sara@gmail.com', '102');
INSERT INTO teachers VALUES(3, 'Omar', '1978-11-10', 'M', 'omar@gmail.com', '103');
INSERT INTO teachers VALUES(4, 'Lina', '1988-01-25', 'F', 'lina@gmail.com', '104');
INSERT INTO teachers VALUES(5, 'Ahmad', '1982-05-18', 'M', 'ahmad@gmail.com', '105');
INSERT INTO teachers VALUES(6, 'Noor', '1990-09-12', 'F', 'noor@gmail.com', '106');
INSERT INTO teachers VALUES(7, 'Khaled', '1975-12-05', 'M', 'khaled@gmail.com', '107');
INSERT INTO teachers VALUES(8, 'Maya', '1987-04-20', 'F', 'maya@gmail.com', '108');
INSERT INTO teachers VALUES(9, 'Yousef', '1981-08-30', 'M', 'yousef@gmail.com', '109');
INSERT INTO teachers VALUES(10, 'Hala', '1991-02-14', 'F', 'hala@gmail.com', '110');
/*تغيير رقم مكتب احد المعلميين*/
update teachers
set office_number='101G'
where id=1;
/*تغيير معلومات احد المعلمين*/
update teachers
set email_teacher='lina99@gmail.com'
where id =4;
SELECT *FROM teachers;
drop table if exists classes;
/*________________________________________________________انشاء جدول للمواد________________________________________________________________*/
CREATE TABLE classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50)
);
/*-اضافه رقم كل ماده واسمها -*/
INSERT INTO classes VALUES (1, 'Database');
INSERT INTO classes VALUES (2, 'Python');
INSERT INTO classes VALUES (3, 'Statistics');
INSERT INTO classes VALUES (4, 'Data Mining');
INSERT INTO classes VALUES (5, 'Artificial Intelligence');
INSERT INTO classes VALUES (6, 'Machine Learning');
select*from classes;





































