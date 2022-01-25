-- 1. display full addresses from locations table in a single column
select * from LOCATIONS;
select STREET_ADDRESS||' '||POSTAL_CODE||' '||CITY||' '||COUNTRY_ID as Full_Addresses
from LOCATIONS;



-- 2. display all informations of the employee who has the minimum salary  in employees table
select * from employees
where salary = ( select min(salary) from employees);

-- 3. display the second minimum salary from the employees
select min(salary) from employees
where salary > ( select min(salary) from employees );

-- 4. display all informations of the employee who has the second minimum  salary
select * from employees
where salary = ( select min(salary) from employees
                 where salary > (select
                                     min(salary) from employees) );

-- 5. list all the employees who are making above the average salary;
select * from employees where salary > ( select avg(salary) from employees );

-- 6. list all the employees who are making less than the average salary
select * from employees where salary < ( select avg(salary) from employees );

-- 7. display manager name of 'Neena'
select * from EMPLOYEES;

-- manager id of Neena
select MANAGER_ID from EMPLOYEES
where FIRST_NAME='Neena';

-- find me who is employee id 100
select FIRST_NAME from EMPLOYEES
where EMPLOYEE_ID=100;


-- make it dynamic

select FIRST_NAME from EMPLOYEES
where EMPLOYEE_ID=(select MANAGER_ID from EMPLOYEES
                   where FIRST_NAME='Neena');




-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
select min(salary) from (select distinct salary from employees
                         order by salary desc)
where rownum < 4;

-- 12. find the 3rd minimum salary from the employees table (do not  include duplicates)
select max(salary) from (select distinct salary from employees
                         order by salary asc)
where rownum < 4;