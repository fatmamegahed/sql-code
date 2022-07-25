--1
creat function getmonth(@x date)
returns varchar(15)
  as
  begin
      declere@n varchar
	  set @n=month(@x)
	  return@n
	  end 

	  select db.getmonth('1998/1/23') as 'month'


  --2

  create functhion get_number(@x int ,@y int)
  returens @t1 table(
       num int 
	   )
	   as begin 
	           while @x< @y-1
			   begin
			   set@x=@x+1
			   insert into @t1
			   select @x

			end 
			return
			end 
     select *from dbo.get numbers(0.10)

--3

creat function stud dept (ax int)
returns @t table (
full_nume nvarchar(50),
dept_name nvarchar(50),
)
as 
  begin
  insert into @t
  select concat(s.st.fname,'  ',s.st.lname) as 'full name',d.dept name 
  from  student s, department d where s.dept_id =d.dept_id and s.st_id=@x
    return
	end
select * from dbo.stud_dept(1)

--4
create function check_ null_stud_name(@_id int )
returns varchar(50)
as 
 begin
 declare @massage varchar (50)
 set @massage =(select case
     when s.st fname is null and s. st_lname is null
	    then 'first name& last name are null'
	when s.st_fname is null
	     then 'first name is null'
	when s.st lname is null
         then'last name is null
         eles
          'first name &last name are not null'

          end 

          from student s wheres.st_id=@s_id
     )

	     return @messge 
	     end 
	     select dbo.check_null_stud_name(15)



--5
function manager @m_id int )
returns @manage table(
        dept_name varchar(50),
		manager_name varchar(50),
		hiring_data data
)
as
begin
  insert into @manage
  select d.dept_name,i.ins_name,d.manager_hiredatefrom instructor i, department d
  where i.ins_id= d. dept_manger and d.dept_manger=@m_id
  return
  end
  select *from dbo.manger(1)



