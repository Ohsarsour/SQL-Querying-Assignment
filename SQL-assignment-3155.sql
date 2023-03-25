SELECT first_name,last_name FROM student;
SELECT instructor_id,tenured FROM instructor;
SELECT s.first_name, s.last_name , a.first_name,a.last_name FROM instructor a join student s on s.advisor_id =a.instructor_id;
SELECT s.first_name, s.last_name , a.first_name,a.last_name from instructor a left join student s on s.advisor_id =a.instructor_id;
SELECT a.first_name,a.last_name,Count(s.num_credits) FROM instructor a join course s on s.instructor_id =a.instructor_id group by a.first_name,a.last_name;
SELECT course_code, course_name FROM course WHERE course_code LIKE '%3___';

SELECT cs.course_code as course_code,ad.first_name as Instructor_First_Name,
ad.last_name as Instructor_last_name,
sum(cs.num_credits) as 'the number of credit hours'
FROM Instructor ad,course cs,student_schedule ss WHERE ad.instructor_id=cs.instructor_id and cs.course_id=sS.course_id
and ss.student_id=1 group by cs.course_code,ad.first_name,ad.last_name;
