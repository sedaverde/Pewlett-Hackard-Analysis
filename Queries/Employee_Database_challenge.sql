-- Creating retirement titles table (deliverable 1)
SELECT e.emp_no,
		e.first_name,
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO emp_by_title
FROM employees AS e
INNER JOIN titles AS ti on e.emp_no =ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_title
FROM emp_by_title
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

--Retirement title counts
SELECT COUNT(emp_no), 
title
INTO retiring_titles
FROM unique_title
GROUP BY title
ORDER BY count DESC;

--Determining mentorship eligibility (deliverable 2)
SELECT DISTINCT ON (e.emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		ti.title
INTO mentorship_eli
FROM employees AS e
INNER JOIN dept_employees AS de ON e.emp_no =de.emp_no
INNER JOIN titles AS ti ON e.emp_no =ti.emp_no
WHERE (de.to_date = '9999-01-01')		
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;