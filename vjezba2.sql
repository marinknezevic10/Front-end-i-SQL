drop database if exists vjezba2;
create database vjezba2 CHARACTER SET utf8;
use vjezba2;

create table putnik (
sifra int not null primary key auto_increment,
pocetnaadresa varchar(70) not null,
krajnjaadresa varchar(70) not null,
brojtelefona varchar(15) not null
);

create table voznja(
sifra int not null primary key auto_increment,
brojvozila int not null,
cijena decimal (6,2),
trajanje int
);

describe putnik;
insert into putnik(sifra,pocetnaadresa,krajnjaadresa,brojtelefona)
	values		(null,'Josipa Kozarca 12','Kralja Tomislava 16',2314561),
				(null,'Adresa 13','Adresa 16',098713875);
				
select * from putnik;

describe voznja;

insert into voznja(sifra,brojvozila,cijena,trajanje)
		values (null,4,40,8),
				(null,5,20,6),
				(null,13,99.99,45);
select * from voznja;