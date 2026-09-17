# Online-Course-Student-Engagement-Performance-Analysis-using-SQL-Python
Online Course Student Engagement Performance Analysis using SQL &amp; Python

# 📊 Online Course Student Engagement & Performance Analysis

## 📌 Project Overview

This project analyzes **online course student data using SQL and Python** to understand student enrollment, engagement, academic performance, completion status, attendance, study hours, and course ratings.

The project combines **SQL for data analysis** and **Python for Exploratory Data Analysis (EDA)** to identify meaningful patterns and insights from student data.

---

## 🎯 Project Objectives

* Analyze the total number of enrolled students.
* Compare student enrollment across courses.
* Analyze average final scores by course.
* Compare attendance and study hours across courses.
* Understand course completion status.
* Identify courses with higher numbers of dropped students.
* Analyze course ratings.
* Identify top-performing students.
* Compare student performance by gender.
* Study the relationship between attendance and final scores.
* Analyze the influence of study hours on final scores.
* Identify monthly enrollment patterns.
* Find students with high study hours but low final scores.
* Compare overall course performance.

---

## 🛠️ Tools & Technologies

* **SQL / MySQL** – Data querying and analysis
* **Python** – Data analysis and EDA
* **Pandas** – Data manipulation
* **NumPy** – Numerical operations
* **Matplotlib / Seaborn** – Data visualization
* **Jupyter Notebook** – Project development environment
* **GitHub** – Project documentation and version control

---

## 🔄 Project Workflow

1. Data Loading
2. Data Understanding
3. Data Cleaning & Preparation
4. SQL Database Creation
5. SQL Query Analysis
6. Exploratory Data Analysis using Python
7. Data Visualization
8. Business Insights
9. Conclusion

---

## 🗃️ SQL Analysis

The SQL analysis contains **15 business questions** related to:

* Student enrollment
* Course-wise student count
* Average final score
* Average attendance
* Average study hours
* Completion status
* Dropped students
* Course ratings
* Top 10 students
* Gender-wise performance
* Attendance vs final score
* Study hours vs final score
* Monthly enrollments
* High study hours & low scores
* Overall course performance

Example SQL analysis:

```sql
SELECT 
    Course_Name,
    ROUND(AVG(Final_Score), 2) AS Average_Final_Score
FROM online_course_students
GROUP BY Course_Name
ORDER BY Average_Final_Score DESC;
```

---

## 🐍 Python Analysis

Python is used for:

* Data loading
* Data cleaning
* Data exploration
* Statistical analysis
* Identifying patterns
* Creating visualizations
* Generating business insights

The complete Python analysis is available in the Jupyter Notebook included in this repository.

---

## 📈 Key Analysis Areas

### 👨‍🎓 Student Enrollment

Analyzed total student enrollment and course-wise enrollment distribution.

### 📚 Course Performance

Compared courses based on final scores, attendance, study hours, and course ratings.

### ⏱️ Student Engagement

Analyzed attendance and study hours to understand their relationship with student performance.

### 🎓 Completion Analysis

Examined the distribution of students across different completion statuses and identified courses with more dropped students.

### 🏆 Student Performance

Identified the top 10 students based on final score and students with high study hours but relatively low final scores.

---

## 💡 Business Insights

The analysis helps understand:

* Which courses attract more students.
* How student performance varies across courses.
* How attendance and study hours relate to final scores.
* The distribution of completed and dropped students.
* Course satisfaction through ratings.
* Student groups requiring additional academic support.
* Enrollment patterns across months.

---

## 📂 Project Files

| File                                                                                 | Description                                |
| ------------------------------------------------------------------------------------ | ------------------------------------------ |
| `Online Course Student Engagement & Performance Analysis using SQL and Python.ipynb` | Python analysis and EDA                    |
| `SQL+PYTHON PROJECT.sql`                                                             | SQL database queries and business analysis |
| `README.md`                                                                          | Project documentation                      |

---

## 🎯 Conclusion

This project demonstrates how **SQL and Python can be combined to analyze online course student data** and generate meaningful business insights.

The analysis provides a better understanding of **student engagement, academic performance, course popularity, completion behavior, and course satisfaction**.

---

## 👩‍💻 Author

**Reena Shri**




`SQL` `Python` `Pandas` `NumPy` `EDA` `Data Visualization` `Data Analysis` `MySQL` `Jupyter Notebook`
