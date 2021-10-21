use hr;

/*1. Retrieve the contact details about employees who belong to department id 10.*/
select * from employees where department_id = 10;

/*2. Retrieve details of all employees who are earning more than 10000 and whose commission_pct is greater than 0.2*/
select * from employees where salary > 10000 and commission_pct > 0.2;

/*3. Retrieve details of all employees who belong to department id either 10 or 20 or 50*/
select * from employees where department_id in (10,20,50);

/*4. Search for employees whose name starts with K and ends with n.*/
select * from employees where first_name like 'K%n';

/*5. Search for employees whose last name contains 'oc'*/
select * from employees where last_name like '%oc%';

/*6. Search for employees who are not earning commission_pct*/
select * from employees where commission_pct = 0;

/*7. Retrieve all non duplicate manager ids from employees table*/
select distinct manager_id from employees;

/*8. Sort the employees record in descending order based on salary. If two employees have same salary sorting should be done in ascending order based on last name.*/
select * from employees order by salary desc , last_name asc;

/*9. get all employees who belong  to department 50 and salary is greater than 5000/
select * from employees where department_id = 50 and salary > 5000;

/*10.Get details of all employees who has job id either as SA_REP or SA_MAN*/
select * from employees where job_id in ('SA_REP','SA_MAN');
