/* 3. Update employee email and phonenumber with following details using prepared statement

  EMAIL: official@yash.com
  PHONENUMBER: 789-778-221 */
use hr;
select * from employees where employee_id=101;
prepare stmt from 'update employees set email = ? , phone_number = ? where employee_id=?';
set @email = 'Official@gmail.com';
set @phone = '123456789';
set @Id='101';
execute stmt using @email,@phone,@Id;


/*4. Create a table States with following columns,

   State_Id 
   State_Name

  and following records,

  S001  Madhya Pradesh
  S002  Uttar Pradesh
 using Replace function insert following entry into state table

  S001 MadhyaPradesh*/
  
  
use practice;
create table States(State_Id varchar(30),State_Name varchar(40));
insert into States values('S001','Madhya Pradesh');
insert into States values('S002','Utter Pradesh');
replace into States(State_Id,State_Name) values('1001','MadhyaPradesh');
select * from States;


/*1. insert new record in employees table with following details using prepared statement

  EMPLOYEE_ID 999
  FIRST_NAME ROHAN
  LAST_NAME  SHAH
  EMAIL  rohan.shah@hotmail.com
  PHONENUMER 230-987-111
  SALARY 45000
  COMMISSION_PCT 0.2
  MANAGER_ID 101
  DEPARTMENT_ID 10*/


use hr;
prepare insertnewrecord from 'insert into employees values(?,?,?,?,?,?,?,?,?,?,?)';
set@EMPLOYEE_ID=999;
set@FIRST_NAME='rohan1';
set@LAST_NAME='SHAH';
set@EMAIL='rohan.shah@hotmail.com';
set@PHONE_NUMER ='230-987-111';
set@HIRE_DATE= '1998-07-09';
set@JOB_ID ='AD_VP';
set@SALARY =45000.0;
set@COMMISSION_PCT=0.2;
set@MANAGER_ID=101;
set@DEPARTMENT_ID=10;
execute insertnewrecord using @EMPLOYEE_ID,@FIRST_NAME,@LAST_NAME,@EMAIL,@PHONE_NUMER,@HIRE_DATE,@JOB_ID ,@SALARY,@COMMISSION_PCT,@MANAGER_ID,@DEPARTMENT_ID;
select * from insertnewrecord;


/*2. delete a record from employees table for following employee_id using prepared statement
   
  EMPLOYEE_ID 101*/
prepare delstatment from 'delete from employees Where employee_id = ?';
set @id=2;
execute delstatment using @id;
select * from employees;


/*5. Create a table student with following columns,

   Student_roll_no
   Student_name
   fees

 Update student fees using replace function*/
use practice;
create table student(roll_no int unique, sname varchar(50),fees int);
insert into student values(1001 ,'Steve',100); 
select * from student;
update student set fees= 40000 WHERE roll_no=1001;
select * from student;