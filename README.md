# Pewlett Hackard Analysis

## Overview of the Analysis

### The purpose of this analysis is to better understand the companies employment data, specifically the titles of retirement eligible employees as well as mentorship eligibility.

## Results

### Retirement title results 
* The majority of employees retiring have either the "Senior Engineer" or "Senior Staff" titles. 
* Additionally, only two managers are eligible to retire (https://github.com/awolfe95/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv). 

### Mentorship eligibility results
* There are only 1,549 employees that are mentorship eligible. 
* The titles for mentorship eligible employees vary greatly, with some just being "staff" members, while some are more senior such as senior staff or senior engineer (https://github.com/awolfe95/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv).

## Summary
* There are 90,398 roles that will need to be filled as the "silver tsunami" begins to make an impact (https://github.com/awolfe95/Pewlett-Hackard-Analysis/blob/main/Data/retiring_count.csv). This number was generated by taking the sum of the retiring titles table and the query language for this can be found here: https://github.com/awolfe95/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql.
* There are enough retirement ready employees able to mentor because there are only 1,549 employees who are mentorship eligible (https://github.com/awolfe95/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_count.csv). This number was generated by taking a count of the employee numbers in the mentorship_eligibility table and the query language for this can be found here: https://github.com/awolfe95/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql.

