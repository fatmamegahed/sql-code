--1
alter procedure studNo 
as
begin 
select d.dept_name ,count (s.st_id) as 'number of students 'from student s join department d
on s. dept_id =d.dept_id
 group by d.[Dept_Name]
 end 

 exec studNo 

 --2

 alter procedure p1empno
 as
 if
 (select count(*) from [dbo].[works_for] w
 where w.pno=100
 )>3
 begin 
 select 'the number of employees in the project p1 is 3 more ',
 e.fname,e.lname from employee e
 end 
 else
 begin
 select' the following employees work for the project p1 ',e.fname ,e.lname  
 from  employee e
 end 
 exec p1empno 

 --3

 alter procedure change(@old int ,@new int ,@pno int )
 as 
 begin 
 update [dbo].[works_for]
 set [essn]=@new
 where essn =@old and works_for .pno=@pno 
 end 
 exect change 512463,968574,600

 --4

 alter table [dbo].[project]
 alter column budget int 
 update [dbo].[project]
 set buget='1';

create table t(projectno int ,username  varchar ,modfiedData data,budget_old int 
budget_new int )

alter trigger t1 on [dbo].[project]
after update
as
begin 
insert into  [dbo].[t]
values((select [pnumber]from inserted),system_user,gerdate(),(select budget from deleted)
,(select budget from inserted))
end 


--5
create trigger tt on [dbo].[departmant]
instead of insert
as
begin
select cant insert a new record in that table 
end
insert into [dbo].[department] values (55,  ,  ,55, getdate())

--6
create trigger m on [employee]
after insert
as
begin
if month (getdate())=3
rollback
end 

--7
create trigger st on [dbo].[student]
after
as
begin
insert into student audittable select system_user,gertdate(),
conct(system_user,':insert new row with key=',convert(varchar(50),)
,in table insert
end


--8











