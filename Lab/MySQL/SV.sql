create database DS_SINHVIEN;
use DS_SINHVIEN;

create table SINHVIEN (
MA_SV int not null primary key AUTO_INCREMENT unique,
Ten_SV varchar(255) not null,
Dia_chi varchar(255) not null,
Ngay_sinh date not null,
Gioi_tinh varchar(5) not null);

create table LOP (
MA_LOP int not null primary key unique,
TEN_LOP varchar(255) not null);

create table MON_HOC(
MA_MH int not null primary key unique,
TEN_MH varchar (255) not null);

alter table SINHVIEN
add column MA_LOP int not null,
add column MA_MH int not null;

alter table SINHVIEN
add constraint MA_LOP foreign key (MA_LOP)
references LOP (MA_LOP);

alter table SINHVIEN
add constraint MA_MH foreign key (MA_MH)
references MON_HOC (MA_MH);