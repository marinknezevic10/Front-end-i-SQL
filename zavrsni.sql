drop database if exists zavrsni;
create database zavrsni character set utf8mb4 COLLATE utf8mb4_croatian_ci;
use zavrsni;


create table igrac(
	sifra int not null primary key auto_increment,
	ime varchar(59) not null,
	prezime varchar(59) not null,
	golovi int not null,
	asistencije int,
	datumrodenja datetime
);

create table sezona(
	sifra int not null primary key auto_increment,
	pocetak datetime not null,
	kraj datetime not null,
	odigranihkola int,
	igrac int not null

);

create table klub(
	sifra int not null primary key auto_increment,
	pobjeda int,
	nerijeseno int,
	izgubljenih int,
	brojigracauklubu int not null,
	nazivstadiona varchar(70) not null,
	sezona int not null
	
);

create table grad(
	sifra int not null primary key auto_increment,
	naziv varchar(30),
	klub int not null,
	brojstanovnika int,
	brojklubova int
);

create table pozicija(
	sifra int not null primary key auto_increment,
	brojigraca int,
	igrac int not null
);

create table trener(
	sifra int not null primary key auto_increment,
	ime varchar(59)not null,
	prezime varchar(59)not null,
	prethodniklubovi varchar(150),
	datumrodenja datetime,
	klub int not null
);

alter table sezona add foreign key(igrac) references igrac(sifra);
alter table klub add foreign key(sezona) references sezona(sifra);
alter table grad add foreign key(klub) references klub(sifra);
alter table pozicija add foreign key(igrac) references igrac(sifra);
alter table trener add foreign key(klub) references klub(sifra);



