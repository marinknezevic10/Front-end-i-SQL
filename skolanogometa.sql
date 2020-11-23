drop database if exists skolanogometa;
create database skolanogometa character set utf8;
use skolanogometa;

create table vlasnik(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	kontaktbroj varchar(15)
);

create table predsjednik(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	iban varchar(50),
	kontaktbroj varchar(15)

);

create table sportskidirektor(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char (11),
	iban varchar(50),
	kontaktbroj varchar(15)
);

create table trener(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char (11),
	iban varchar(50),
	kategorija int not null,
	polaznici int,
	kontaktbroj varchar(15)
	
);

create table kategorija(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	polaznici int,
	trener int
);

create table polaznici(
	sifra int not null primary key auto_increment,
	brojpolaznika int
);


alter table kategorija add foreign key(trener) references trener(sifra);
alter table kategorija add foreign key(polaznici) references polaznici(sifra);


describe vlasnik;
select * from vlasnik;
insert into vlasnik(sifra,ime,prezime) values (null,'Ime','Prezime');

describe predsjednik;
select * from predsjednik;
insert into predsjednik(sifra,ime,prezime) values(null,'Prezime','Ime');

describe sportskidirektor;
select * from sportskidirektor;
insert into sportskidirektor(sifra,ime,prezime) values(null,'Da','Ne');

describe trener;
select * from trener;
insert into trener(sifra,ime,prezime,kategorija) values(null,'Ne','Da',12);

describe kategorija;
select * from kategorija;
insert into kategorija(sifra,naziv) values(null,'Juniori');

describe polaznici;
select * from polaznici;
insert into polaznici(sifra) values(null);




