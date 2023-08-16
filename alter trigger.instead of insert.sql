create or alter trigger empsalecheck on employees for update 
as 
begin
declare @old_salary decimal (18,2);
declare @new_salary decimal (18,2);

select @old_salary = salary from deleted;
select @new_salary= salary from inserted;
if @old_salary> @new_salary
begin
print 'new salary cannot be less than old salary';
rollback;
end;
end;

update Employees set salary=salary -500;

update Employees set salary=salary +500;





create or alter trigger empdelecheck on employees for delete 
as 
begin
declare @count int;
select @count = count(*) from deleted; 
if @count >1
begin
print 'cannot delete more than one record at a time ';
rollback;
end;
end;



CREATE OR ALTER VIEW EMPVIEW As
SELECT e.employeeid , e.FIRSTNAME , e.SALARY , d.DEPARTMENTNAME
FROM employees e , DEPARTMENT d
WHERE d.DEPARTMENTID = e.DEPARTMENTID ; 


create or alter trigger trig_empview on EMPVIEW instead of insert as
begin
declare @empid int ;
declare @name nvarchar(50);
declare @sal decimal (18,2);
declare @depid int;
select @empid = employeeid , @name= FIRSTNAME , @sal = SALARY , @depid=d.departmentid
from Department d  , inserted
where d.DepartmentName= inserted.departmentname;

if @depid is null
begin 
print 'invailed department';
rollback;
end;

insert into Employees(EmployeeId, FirstName, Salary, DepartmentId)
values(@empid,@name ,@sal,@depid);
end;

insert into EMPVIEW values (12, 'john' , 60000, 'HR');
SELECT*FROM EMPVIEW;
SELECT*FROM Employees;

