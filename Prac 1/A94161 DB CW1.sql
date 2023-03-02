show databases;
create database uganda_christian_university;
show databases;
use uganda_christian_university;
create table Students (id varchar(1), name varchar(20), date_of_birth date);
create table Grades (student_id char(1), Subject varchar(20), grade int);
insert into Students(id,name,date_of_birth) values("1","Joshua","2001-10-02"),('2','Tom','2001-02-10'),('3','John','2000-12-10'),('4','Paul','2005-02-15');
insert into Grades(student_id,Subject,grade) values ('1','Math',70),('2','COA',60),('3','OOP',40),('4','Math',20);
select * from Students;
ALTER TABLE Grades ADD COLUMN teacher VARCHAR(50);
UPDATE Grades SET teacher = 'Mr. Smith';
DELETE FROM Grades WHERE grade < 60;
DROP TABLE Grades;
INSERT INTO Students (id,name, date_of_birth) VALUES ('5','John Doe', '2001-02-03');
SELECT * FROM Students WHERE name LIKE '%John%';
SELECT * FROM Students WHERE date_of_birth BETWEEN '2000-01-01' AND '2010-12-31' ORDER BY name DESC;
SELECT * FROM Grades WHERE Subject LIKE '%Math%';
ALTER TABLE Students ADD PRIMARY KEY (id);
ALTER TABLE Grades ADD FOREIGN KEY (student_id) REFERENCES Students(id);
SELECT Students.name, Grades.subject FROM Students INNER JOIN Grades ON Students.id = Grades.student_id WHERE Grades.grade >= 80;
SELECT Students.name, Grades.subject FROM Students LEFT OUTER JOIN Grades ON Students.id = Grades.student_id WHERE Grades.grade < 60;
SELECT name, subject FROM Students NATURAL JOIN Grades WHERE Subject LIKE '%Science%';
SELECT Students.name, Grades.subject FROM Students CROSS JOIN Grades WHERE Grades.grade >= 80;
SELECT Students.name, Grades.subject FROM Students FULL OUTER JOIN Grades ON Students.id = Grades.student_id AND Grades.grade < 60;
SELECT Students.name, Grades.subject, Grades.grade FROM Students JOIN Grades ON Students.id = Grades.student_id WHERE Grades.grade >= 80 AND Grades.Subject LIKE '%Math%' AND Students.date_of_birth BETWEEN '2000-01-01' AND '2010-12-31' ORDER BY Students.name ASC;

















