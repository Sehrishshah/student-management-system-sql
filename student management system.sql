create database students_database
 
 use students_database

 SELECT * from Student_Management_System
 SELECT top 20 * from Student_Management_System

 --CHECKING FOR NULL AND DUPLICATE VALUES:
 SELECT COUNT(*) from Student_Management_System
 where address IS NULL

 SELECT studentID,email,phone,COUNT(*) from Student_Management_System
 Group By studentID,email,phone
 HAVING COUNT(*)>1


--Total number of students
SELECT COUNT(studentID) AS total_students from Student_Management_System


--Total number of students in each department in descending order
SELECT department,COUNT(studentID) AS total_students 
from Student_Management_System
GROUP BY Department
ORDER BY count(studentID) DESC

--top 5 students 
SELECT top 5 studentID, FirstName, CGPA from Student_Management_System
ORDER BY CGPA desc

--Creating a separate table to desplay only a few details of each student.
CREATE VIEW student_details AS
SELECT studentID,
CONCAT(FirstName,' ',LastName) AS FullName,email,department,CGPA
FROM Student_Management_System

SELECT * from student_details


--Average cgpa of each dept.
 SELECT department,AVG(cgpa) as averageCGPA
 from Student_Management_System
 GROUP BY Department 
 ORDER BY AVG(cgpa) desc


 --Student's enrolling year.
SELECT studentID, concat(firstname,' ', lastname) as fullname,EnrollmentYear 
from Student_Management_System


 -- Number of students enrolled each year
SELECT Enrollmentyear , COUNT(StudentID) from Student_Management_System
GROUP BY  EnrollmentYear
ORDER BY enrollmentyear


/* 
                                  INSIGHTS.

1) Student distribution across departments:
The student population is unevenly distributed across departments.
The ME department has the highest number of students, 
while some departments have comparatively fewer enrollments.

2)Academic performance:
The average CGPA varies across departments,
ME dept has the highest CGPA.
Architecture dept has a poor academic peformance

3)Enrollment trends:
Student enrollment analysis by year showed trends in admissions 
and the rate of enrollment is decreasing over time.

4)ME had 1720 students and the highest average CGPA was 3

*/