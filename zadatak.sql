drop database if exists zadatak;
create database zadatak CHARACTER SET utf8;
use zadatak;

create table opcina(
sifra int not null primary key auto_increment,
zupanija int,
naziv varchar(70) not null
);

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar(70) not null,
zupan varchar(70)
);


alter table opcina add foreign key(zupanija) references zupanija(sifra);

insert into opcina(sifra,naziv)
values(null,'Qwer'),(null,'Qwert'),(null,'Qwertz'),(null,'Asdf'),(null,'Asdfg'),(null,'Asdfgh');
select * from opcina;

insert into zupanija(sifra,naziv,zupan) 
values(null,'Naziv','Pero'),
	(null,'Zivna','Rope'),
	(null,'Aha','Da');
select * from zupanija;




		
	  
