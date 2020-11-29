drop database if exists parfumerija;
create database parfumerija;
use parfumerija;

create table proizvod(
	sifra int not null primary key auto_increment,
	naziv varchar(50)not null,
	vrsta varchar (50)not null,
	cijena decimal(6,2)
);

create table vrsta(
	sifra int not null primary key auto_increment,
	proizvod int,
	brand varchar(50) not null

);

create table kupac(
	sifra int not null primary key auto_increment,
	nacinplacanja int,
	proizvod varchar(50)not null,
	vrsta int
	
);

create table nacinplacanja(
	sifra int not null primary key auto_increment,
	kupac int,
	cijena decimal(6,2)not null,
	karticno boolean not null
	
);

alter table vrsta add foreign key(proizvod) references proizvod(sifra);
alter table kupac add foreign key(vrsta) references vrsta(sifra);
alter table nacinplacanja add foreign key(kupac) references kupac(sifra);

insert into proizvod(sifra,naziv,vrsta)
values(null,'Tom Ford',1),
(null,'Dior Homme',1),
(null,'Matis',2),
(null,'Dezynex',8);
select * from proizvod;

insert into vrsta(sifra,brand)
values(null,'Cartier'),
(null,'Bvlgari'),
(null,'Calvin Klein'),
(null,'Elemis'),
(null,'Givenchy'),
(null,'Kenzo');
select * from vrsta;

insert into kupac(sifra,proizvod)
values(null,'Hydra life'),(null,'Glamglow'),(null,'Dior Intense'),(null,'212 Men After Shave'),
(null,'Armani Code Homme Shower Gel'),(null,'Percy Nobleman'),(null,'L''Homme Deodorant');
select * from kupac;

insert into nacinplacanja(sifra,cijena,karticno)
values(null,399.99,true),(null,599.90,false),(null,867.99,true);
select * from nacinplacanja;

delete from proizvod where sifra=4;
delete from proizvod where sifra=2;

delete from vrsta where sifra=1;
delete from vrsta where sifra=5;
delete from vrsta where sifra=6;

update kupac set
proizvod='Dobro' where sifra=1;
delete from kupac where sifra=3;
delete from kupac where sifra=4;

update nacinplacanja set
cijena=cijena*0.9 where sifra=2;
update nacinplacanja set
cijena=cijena*0.70 where sifra=3;


