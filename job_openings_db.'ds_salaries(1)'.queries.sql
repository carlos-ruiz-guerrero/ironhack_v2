use job_openings_db;

SELECT * FROM job_openings_db.`ds_salaries (1)`;

# Provide a top 20 of the entry-level positions with the highest pay in the year 2022 

SELECT job_title, salary_in_usd FROM job_openings_db.`ds_salaries (1)`
WHERE experience_level = 'EN' AND work_year = 2022
ORDER BY salary_in_usd DESC
LIMIT 20;

# Calculate the average salary of a machine learning engineer in spain for the yer 2022

SELECT AVG(salary) AS average_salary
FROM job_openings_db.`ds_salaries (1)`
WHERE job_title = 'Machine Learning Engineer'
  AND salary_currency = 'EUR'


  

