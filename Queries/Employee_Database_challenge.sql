-- Retrieve retiring employees and their titles
Select e.emp_no, 
e.first_name, 
e.last_name, 
t.title, 
t.from_date, 
t.to_date
Into retirement_titles
From employees as e
Inner join titles as t
On (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
Order by e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) 
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

--Number of retiring employees by most recent title
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count desc;

--Retrieve employees eligible for mentorship program
Select Distinct on (e.emp_no)
e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date, 
de.from_date, 
de.to_date, 
t.title
Into mentorship_eligibility
From employees as e
Inner join dept_emp as de
On (e.emp_no = de.emp_no)
Inner join titles as t
On (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

