drop database if exists moze;
create database moze character set utf8;
use moze;

create table trener(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	grupa varchar(20) not null,
	iban varchar (50),
	oib char (11)
);

create table grupa(
	sifra int not null primary key auto_increment,
	naziv varchar(20) not null,
	trener int,
	teren int not null,
	brojpolaznika int
);

create table teren(
	sifra int not null primary key auto_increment,
	vrsta int,
	grupa int,
	vrijeme datetime not null
);

create table vrijeme(
	sifra int not null primary key auto_increment,
	pocetaktreninga datetime,
	krajtreninga datetime,
	teren int
);

alter table grupa add foreign key(trener) references trener(sifra);
alter table teren add foreign key(grupa) references grupa(sifra);
alter table vrijeme add foreign key(teren) references teren(sifra);

insert into trener(sifra,ime,prezime,grupa)
	values(null,'Marin','Knežević','Limači'),
		(null,'Dobar','Dan','Kadeti');
select * from trener;

insert into grupa(sifra,naziv,teren)
	values(not null,'Limači',1),
	(not null,'Početnici',2),
	(not null,'Kadeti',3),
	(not null,'Juniori',7),
	(not null,'Seniori',9);
select * from grupa;

insert into teren(sifra,vrijeme)
	values(not null,'2020-11-27 09:00:00'),
	(not null,'2020-11-27 09:30:00'),
	(not null,'2020-11-27 10:00:00'),
	(not null,'2020-11-27 10:30:00');
select * from teren;

insert into vrijeme(sifra,pocetaktreninga,krajtreninga,teren)
	values(not null,'2020-11-27 09:00:00','2020-11-27 10:30:00',2),
	(not null,'2020-11-27 08:30:00','2020-11-27 10:00:00',3),
	(not null,'2020-11-27 09:30:00','2020-11-27 11:00:00',1);
select * from vrijeme;

update trener set
grupa='Kadeti';
update trener set
grupa='Limači' where sifra=2;

delete from grupa where sifra=1;
delete from grupa where sifra=2;
delete from grupa where sifra=3;

delete from vrijeme where teren=1;
delete from teren where sifra=1;
delete from teren where sifra=1;
delete from vrijeme where teren=2;
delete from teren where sifra=2;
delete from teren where sifra=2;

update grupa set
naziv='Kadeti' where sifra=4;
update grupa set
naziv='Limači' where sifra=5;



	




