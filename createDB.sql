create database QUE1;
use QUE1;

create table Employee(
	EmployeeID int primary key auto_increment,
    FirstName varchar(100) not null,
    LasttName varchar(100),
    Department varchar(100) not null,
    Salary int not null,
    Hire_Date date
) ;

select * from employee;

insert into Employee(FirstName, LasttName, Department, Salary ,Hire_Date)
values
('Jhon', 'Doe', 'HR', 55000, '2021.05.14' ),
('Jane', 'Smith', 'IT', 62000, '2020-04-21' ),
('Emiily', 'Johnson', 'IT', 57000, '2019-03-04' ),
('Mike', 'Brown', 'Sales', 49000, '2021-05-14' );

select * from employee;

update Employee
set Salary = Salary * 1.1
where Department = 'IT';
select * from employee;

update Employee
set Department = 'Sales'
where Salary < 60000;
select * from employee;

update Employee
set Department = 'IT';

select * from employee;

use que1


