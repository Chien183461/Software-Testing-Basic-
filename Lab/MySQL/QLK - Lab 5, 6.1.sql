create database quanlykho;

use quanlykho;

create table danhmuckho (
MA_KHO int,
TEN_KHO varchar(100)
);

drop table danhmuckho;

show tables;

create table phanloaiHH (
MA_NhomHH varchar (100),
TEN_NhomHH varchar (255)
);

insert into phanloaiHH (MA_NhomHH,TEN_NhomHH)
values 	('DL','Thuc pham dong lanh'),
		('DK','Đo kho'),
		('TS','Thuc pham tuoi song');

create table danhmucHH (
MA_HH varchar(100) primary key not null,
TEN_HH varchar (255),
MA_NhomHH varchar (100),
Soluong int,
Donvitinh varchar (100)
);

insert into danhmucHH (MA_HH,TEN_HH,MA_NhomHH,Soluong,Donvitinh)
values 	('T001','Thịt lợn','TS', 100, 'kg'),
		('T002','Thịt bò','TS', 20, 'kg'),
		('T003','Trứng','TS', 1000, 'qua'),
		('R001', 'Rau muống','TS', 10, 'bo'),
		('M001', 'Mắm Khải Hoàn','DK', 30, 'chai'),
		('M002', 'Miến','DK', 35, 'goi'),
		('M003', 'Mực khô','DL', 5, 'kg');

select * from danhmucHH;
select * from phanloaiHH;

select MA_HH, TEN_HH, Donvitinh from danhmucHH;

alter table phanloaiHH add primary key (MA_NhomHH);

alter table danhmucHH add foreign key (MA_NhomHH) references phanloaiHH(MA_NhomHH);

show tables;

alter table phanloaiHH
add column MA_KHO int unique;

alter table phanloaiHH
rename column MA_NhomHH to MA_LoaiHH;
alter table phanloaiHH
rename column TEN_NhomHH to TEN_LoaiHH;

alter table phanloaiHH
modify column TEN_LoaiHH char(100);
alter table danhmucHH
modify column donvitinh char(100);

insert into danhmucHH (MA_HH,TEN_HH,MA_NhomHH,Donvitinh)
values ('T005', 'Thịt gà', 'TS',  'kg');

describe phanloaiHH;
describe danhmucHH;

update phanloaihh
set TEN_LoaiHH = 'Đồ Khô'
where MA_LoaiHH = 'DK';

update phanloaihh
set TEN_LoaiHH = 'Thực phẩm đông lạnh'
where MA_LoaiHH = 'DL';

update phanloaihh
set TEN_LoaiHH = 'Thực phẩm tươi sống'
where MA_LoaiHH = 'TS';

delete from danhmucHH
where MA_HH = 'T005';

Update phanloaiHH
set MA_KHO = 2
where MA_LoaiHH = 'DK';
Update phanloaiHH
set MA_KHO = 1
where MA_LoaiHH = 'DL';
Update phanloaiHH
set MA_KHO = 3
where MA_LoaiHH = 'TS';

alter table phanloaiHH
drop MA_KHO;

select MA_HH, TEN_HH, Donvitinh from danhmucHH
where MA_NhomHH = 'TS';

select * from danhmucHH
where MA_NhomHH = 'DK';

select count(ma_HH) from danhmuchh
where Donvitinh = 'kg';

select * from danhmuchh
where MA_NhomHH ='TS' and Donvitinh = 'kg';

select * from danhmucHH
where MA_HH like 'M00%';

select * from danhmucHH
order by TEN_HH ASC;

select * from danhmucHH
order by Soluong desc, TEN_HH desc
limit 3;

select * from danhmucHH
where TEN_HH like ('thịt%')
and soluong > 20;

select * from danhmucHH
limit 3;