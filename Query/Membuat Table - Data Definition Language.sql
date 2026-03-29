show databases;
create database test_db;
drop database test_db;
create database universitas;
use universitas;

create table Mahasiswa(
    NIM varchar(10) not null,
    Nama varchar(50),
    Alamat varchar(150),
    GPA float,
    primary key(NIM)
);

show tables;
describe Mahasiswa;

alter table Mahasiswa add Kota_Kelahiran varchar(50);

alter table Mahasiswa change column Kota_Kelahiran Kota_Asal varchar (50);

alter table Mahasiswa drop column Alamat;

alter table Mahasiswa rename to Siswa;

Studi kasus 1:
create database Store;
use Store;
create table Stuffs(
    stuff_code varchar(10) not null,
    name varchar(50),
    primary key(stuff_code)
);

show tables;
describe stuffs;

alter table stuffs add price integer(8);
