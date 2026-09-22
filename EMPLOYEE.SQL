create database employee_attritiondb;
use employee_attritiondb;
select * from employee_attrition;

select count(*) from employee_attrition;

select 
department, count(*) as total_employees,sum(case when attrition = 'yes' then 1 else 0 end) as attrition_count from employee_attrition group by department;

SELECT avg(engagement_score), AVG(work_life_balance_score) FROM employee_attrition;

SELECT monthly_income,age FROM employee_attrition WHERE monthly_income IS NULL  OR age IS NULL;

SELECT work_mode, AVG(overtime_hours_per_week) FROM employee_attrition GROUP BY work_mode;

SELECT * FROM  employee_attrition LIMIT 10;




