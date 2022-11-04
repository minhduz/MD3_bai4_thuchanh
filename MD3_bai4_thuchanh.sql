use quanlysinhvien;
-- 1
SELECT Address, COUNT(StudentId) AS 'Số lượng học viên' FROM Student
GROUP BY Address; 
-- 2
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId 
GROUP BY S.StudentId;
-- 3
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15;
-- 4
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId 
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);

select * from student;
select * from mark;