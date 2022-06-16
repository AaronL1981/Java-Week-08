desc titles;
desc employees;

SELECT t.title as "Job Title", count(e.emp_no) as "Number of Employees"
FROM titles t
INNER JOIN employees e ON t.emp_no = e.emp_no
WHERE e.birth_date > '1965-01-01'
GROUP BY t.title;

desc salaries;
desc titles;

SELECT titles.title as "Job Title", avg(salary) as "Average Salary"
FROM titles
INNER JOIN salaries on salaries.emp_no = titles.emp_no
GROUP BY titles.title;

SELECT *
FROM departments
GROUP BY dept_name
LIMIT 20;

SELECT d.dept_name as "Department", count(s.salary) as "Total Salary"
FROM salaries s
INNER JOIN dept_emp de on de.emp_no = s.emp_no
INNER JOIN departments d on de.dept_no = d.dept_no
WHERE d.dept_no = 'd001' AND s.from_date >= '1990-01-01' AND s.to_date <= '1992-12-31'
GROUP BY d.dept_name;