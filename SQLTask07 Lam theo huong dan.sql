--1. Dùng SQL Management Studio tạo một cơ sở dữ liệu tên là Lab10:
create database Lab10
go

--2. Sao dữ liệu từ bảng WorkOrder của cơ sở dữ liệu AdventueWorks sang cơ sở dữ liệu Lab10 vừa tạo bằng cách sử dụng những câu lệnh sau:
use AdventureWorks2019
select * into Lab10.dbo.WorkOrder from Production.WorkOrder

--3 Sao dữ liệu từ bảng WorkOrder của cơ sở dữ liệu Lab10 sang bảng WorkOrderIX của cơ sở dữ liệu Lab10:
use Lab10
select * into WorkOrderIX from Workorder

--4 Xem dữ liệu ở cả hai bảng:
select * from WorkOrder
select * from WorkOrderIX

--5

--6 Tạo một chỉ mục trên cột WorkOrderID của bảng WorkOrderIX bằng câu lệnh sau:
create index IX_WorkOrder on WorkOrderIX(WorkOrderID)

--7 Thực hiện 2 câu lệnh select sau:
select * from WorkOrder where WorkOrderID= 72000
select * from workorderIX where WorkOrderID= 72000

--8 

