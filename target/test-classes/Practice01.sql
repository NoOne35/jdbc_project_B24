-- 1. List all the employees first and last name with their salary in employees table

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;

-- 2. How many employees have salary less than 5000?

select count(*) from EMPLOYEES
where SALARY<5000;

-- 3. How many employees have salary between 6000 and 7000?
select count(*) from EMPLOYEES
where salary between 6000 and 7000;



-- 4. List all the different region_ids in countries table

select distinct REGION_ID from COUNTRIES;


-- 5. display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)

select salary from EMPLOYEES
where FIRST_NAME='Douglas' and LAST_NAME='Grant';


-- 6. display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive
select * from DEPARTMENTS
where DEPARTMENT_NAME='IT' or DEPARTMENT_NAME='Sales' or DEPARTMENT_NAME='Public Relations' or DEPARTMENT_NAME='Executive';


select * from DEPARTMENTS
where DEPARTMENT_NAME IN ('IT','Sales','Public Relations','Executive');

-- 7. display the maximum salary in employees table
select max(salary) from employees;

-- 8. display the the minimum salary in employees table
select min(salary) from employees;


-- 9. display the average salary of the employees;
select avg(salary) from employees;

select round(avg(salary),1) from employees;


-- 10. count the total numbers of the departments in departs table

select count(*) from DEPARTMENTS;
-- BAD PRACTICE
select count(MANAGER_ID) from DEPARTMENTS;

-- 11. sort the start_date in ascending order in job_history's table
select * from JOB_HISTORY
order by START_DATE;

select * from JOB_HISTORY
order by START_DATE ASC ;


-- 12. sort the start_date in descending order in job_history's table
select * from JOB_HISTORY
order by START_DATE DESC ;

-- 13. display all records whose last name contains 2 lowercase 'a's

select * from EMPLOYEES
where LAST_NAME LIKE '%a%a%';

--  _ > one character
--  % > any sequence of char (0 or more char )

-- 14. display all the employees whose first name starts with 'A'
select * from EMPLOYEES
where FIRST_NAME LIKE 'A%';

-- 15. display all the employees whose job_ID contains 'IT'

select * from EMPLOYEES
where EMPLOYEES.JOB_ID LIKE '%IT%';

-- 16. display all  unique job_id that ends with CLERK in employee table
select distinct JOB_ID from EMPLOYEES
where JOB_ID LIKE '%CLERK';


-- 17.display all  employees first name starts with A and have exactly 4 characters Total

select * from EMPLOYEES
where FIRST_NAME LIKE 'A___';

-- 18. display all the employees whose department id in 50, 80, 100
select * from EMPLOYEES
where DEPARTMENT_ID IN (50,80,100);

-- 19. display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select * from EMPLOYEES
where DEPARTMENT_ID NOT IN (60,90,100,120,130);


-- 20. divide employees into groups by using thier job id
select job_id from EMPLOYEES
group by job_id;

-- 1 display the maximum salaries in each groups
select job_id,max(salary) from EMPLOYEES
group by job_id;

-- 2 display the minium salaries in each groups
select job_id,min(salary) from EMPLOYEES
group by job_id;

-- 3 display the average salary of each group
select job_id,avg(salary) from EMPLOYEES
group by job_id;

-- 4 how many employees are there in each group that have minimum salary of 5000 ?
select job_id,count(*) from EMPLOYEES
where SALARY>=5000
group by job_id
;
-- 5 display the total budgests of each groups
select job_id,sum(salary) from EMPLOYEES
group by job_id;

-- 21. display all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
select job_id,avg(salary) from EMPLOYEES
group by job_id
having JOB_ID IN ('IT_PROG','SA_REP','FI_ACCOUNT','AD_VP');


select job_id,avg(salary) from EMPLOYEES
where JOB_ID IN ('IT_PROG','SA_REP','FI_ACCOUNT','AD_VP')
group by job_id;


-- 22.display max salary  for each department

select DEPARTMENT_ID,max(salary)from EMPLOYEES
group by DEPARTMENT_ID;


-- 23. display total salary for each department except department_id 50, and where total salary >30000

select DEPARTMENT_ID,sum(salary)from EMPLOYEES
group by DEPARTMENT_ID
having sum(SALARY)>30000 and DEPARTMENT_ID <> 50;
;






