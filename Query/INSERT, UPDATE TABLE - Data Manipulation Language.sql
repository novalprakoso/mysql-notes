create database kampus;
show databases;
use kampus;

CREATE TABLE mahasiswa(
    NIM varchar(10) not null,
    nama varchar(50),
    kota varchar(150),
    GPA float,
    primary key(NIM)
);

SHOW TABLES;
describe mahasiswa;

INSERT INTO mahasiswa
values('2601', 'Ana', 'Jakarta', 3.1);

select * from mahasiswa;

INSERT INTO mahasiswa(nim, nama)
values('2602','Budi');

INSERT INTO mahasiswa(nama, gpa, nim)
values('Cucun', 2.8, '2603');

INSERT INTO mahasiswa(nim, nama, kota, gpa)
values('2604', 'Dede', 'Cilacap', 2.9),
('2605', 'Farah', 'Cirebon', 3.8),
('2606', 'Guntur', 'Bandung', 3.5);

UPDATE mahasiswa
set kota='Jogjakarta'
where NIM=2605;

UPDATE mahasiswa
set kota='Bekasi', GPA=3.7
where NIM='2602';

DELETE FROM mahasiswa
where NIM='2603';

SELECT * FROM mahasiswa WHERE NIM='2602';

SET SQL_SAFE_UPDATES = 1;