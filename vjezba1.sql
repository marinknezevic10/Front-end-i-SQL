drop database if exists vjezba1;
create database vjezba1 CHARACTER SET utf8;
use vjezba1;

create table muzej(

sifra int not null primary key auto_increment,
naziv varchar(50) not null,
pocetakradnogvremena varchar(2) not null,
krajradnogvremena int not null,
adresa varchar(70),
kontakt varchar(15)

);
select * from muzej; 
insert into muzej (sifra,naziv,pocetakradnogvremena,krajradnogvremena,adresa,kontakt)
 values (null,'Muzej umjetnosti Osijek',7,21,'Drziceva 15',1234),
 		(null,'Muzej',10,20,'Marinova 10',12345),
 		(null,'Zejmu',06,17,'Ulica 1',54378),
 		(null,'Muzejjj',09,21,'Ulica 2',11223344);