
   
use hr;

/*1. Display department_id's of all departments which have number of employees greater than 5.*/
select count(department_id),department_id
from employees
group by department_id
having count(department_id)>5;

/*2. display department ids whose employees salary average is greater than 20000*/
select department_id,avg(salary)
from employees
group by department_id
having avg(salary)>5000;

/*3. Display details of  5 employees who are earning highest salary*/
select first_name,max(salary) 
from employees 
group by salary
order by salary desc
limit 5;

/*4. Retrieve department name,city,country name and region name to which employees belong to. */
select e.last_name,e.department_id,d.department_name,l.city,c.country_name
from employees e
left outer join
departments d
on(e.department_id=d.department_id)
join
locations l
on(l.location_id=d.location_id)
join
countries c
on(l.country_id=c.country_id);

/*5. Retrieve details of all employees whose commission_pct is greater than commission_pct of employee with last name De Haan.*/
select * 
from employees 
where commission_pct > ifnull((select commission_pct from employees where last_name='De Haan'),0);