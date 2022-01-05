create database Aptech
go

use Aptech
go

create table Classes (
	ClassName char(6),
	Teacher varchar(30),
	TimeSlot varchar(30),
	Class int,
	Lab int
)
go
insert into Classes(ClassName, Teacher, TimeSlot, Class, Lab) values ('Tên lớp', 'Tên giáo viên', 'giờ học', 3, 3)
go

--1
create clustered index MyClusteredIndex
on Classes(ClassName) with (Pad_index = on,FillFactor=70)
go

--2 
create nonclustered index TeacherIndex
on Classes(Teacher)
go

--3
drop index TeacherIndex on Classes
go

--4
create index ClassLabIndex on Classes(Class, Lab)
go

--5
DBCC SHOW_STATISTICS(MyClusteredIndex,TeacherIndex)
go