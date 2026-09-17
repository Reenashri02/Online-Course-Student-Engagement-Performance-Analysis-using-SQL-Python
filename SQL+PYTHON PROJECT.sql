create DATABASE online_course_analysis;
use online_course_analysis;
show DATABASES;
SELECT * from online_course_students;
-------------------------------------------------------------------------------------------------------------------------------------------------

(1). What is the Total number of students enrolled  in the online courses?

SELECT COUNT(*) AS Total_Students FROM online_course_students;

(2).How many students who have enrolled in each course?

SELECT 
    Course_Name,
    COUNT(*) AS Total_Students
FROM online_course_students
GROUP BY Course_Name
ORDER BY Total_Students DESC;    

(3).which course has the highest average final score?

SELECT 
    Course_Name,
    ROUND(AVG(Final_Score), 2) AS Average_Final_Score
FROM online_course_students
GROUP BY Course_Name
ORDER BY Average_Final_Score DESC;

(4).Which course has the highest average attendance?

SELECT 
    Course_Name,
    ROUND(AVG(Attendance), 2) AS Average_Attendance
FROM online_course_students
GROUP BY Course_Name
ORDER BY Average_Attendance DESC;

(5).What is the Average study hours for each student?

SELECT 
    Course_Name,
    ROUND(AVG(Study_Hours), 2) AS Average_Study_Hours
FROM online_course_students
GROUP BY Course_Name
ORDER BY Average_Study_Hours DESC;

(6).What is the completion status distribution?

SELECT 
    Completion_Status,
    COUNT(*) AS Total_Students
FROM online_course_students
GROUP BY Completion_Status
ORDER BY Total_Students DESC;

(7).Which course has the highest number of dropped students?

SELECT 
    Course_Name,
    COUNT(*) AS Dropped_Students
FROM online_course_students
WHERE Completion_Status = 'Dropped'
GROUP BY Course_Name
ORDER BY Dropped_Students DESC;

(8).Which course has the highest average course rating?

SELECT 
    Course_Name,
    ROUND(AVG(Course_Rating), 2) AS Average_Rating
FROM online_course_students
GROUP BY Course_Name
ORDER BY Average_Rating DESC;

(9).Who are the top 10 students based on final score?

SELECT 
    Student_ID,
    Course_Name,
    Final_Score
FROM online_course_students
ORDER BY Final_Score DESC
LIMIT 10;

(10).How does student performance different by gender?

SELECT 
    Gender,
    COUNT(*) AS Total_Students,
    ROUND(AVG(Final_Score), 2) AS Average_Final_Score,
    ROUND(AVG(Attendance), 2) AS Average_Attendance,
    ROUND(AVG(Course_Rating), 2) AS Average_Rating
FROM online_course_students
GROUP BY Gender
ORDER BY Average_Final_Score DESC;

(11).Does higher attendance leads to higher final score?

SELECT
    CASE
        WHEN Attendance >= 80 THEN 'High Attendance'
        WHEN Attendance >= 65 THEN 'Medium Attendance'
        ELSE 'Low Attendance'
    END AS Attendance_Level,
    
    COUNT(*) AS Total_Students,
    ROUND(AVG(Final_Score), 2) AS Average_Final_Score

FROM online_course_students

GROUP BY Attendance_Level
ORDER BY Average_Final_Score DESC;

(12).Does study hours influence the final score?

SELECT
    CASE
        WHEN Study_Hours >= 18 THEN 'High Study Hours'
        WHEN Study_Hours >= 10 THEN 'Medium Study Hours'
        ELSE 'Low Study Hours'
    END AS Study_Level,

    COUNT(*) AS Total_Students,
    ROUND(AVG(Final_Score), 2) AS Average_Final_Score

FROM online_course_students

GROUP BY Study_Level
ORDER BY Average_Final_Score DESC;

(13).Which month has the highest number of enrollments?

SELECT
    MONTH(Enrollment_Date) AS Enrollment_Month,
    COUNT(*) AS Total_Enrollments
FROM online_course_students
GROUP BY MONTH(Enrollment_Date)
ORDER BY Total_Enrollments DESC;

(14).Which students have low Final Scores but high Study Hours?

SELECT
    Student_ID,
    Course_Name,
    Study_Hours,
    Final_Score
FROM online_course_students
WHERE Study_Hours >= 18
  AND Final_Score < 60
ORDER BY Final_Score ASC;

(15).Which course shows the  best overall student performance?

SELECT
    Course_Name,
    ROUND(AVG(Final_Score), 2) AS Avg_Final_Score,
    ROUND(AVG(Attendance), 2) AS Avg_Attendance,
    ROUND(AVG(Study_Hours), 2) AS Avg_Study_Hours,
    ROUND(AVG(Course_Rating), 2) AS Avg_Rating
FROM online_course_students
GROUP BY Course_Name
ORDER BY Avg_Final_Score DESC

-----------------------------------------------------------------------------------------------------------------------------------------------