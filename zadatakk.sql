drop database if exists zadatakk;
create database zadatakk character set utf8;
use zadatakk;


create table zupan(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null
);

create table zupanija(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	zupan int not null#FK
);

create table mjesto (
	sifra int not null primary key auto_increment,
	opcina int,
	naziv varchar(50) not null
);

create table opcina(
	sifra int not null primary key auto_increment,
	zupanija int,
	naziv varchar(50) not null
	);


alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key(opcina) references opcina(sifra);


insert into zupan(sifra,ime,prezime)
values(null,'Asdf','Ghjk'),(null,'Aaaaa','Bbbbb'),(null,'Cccc','Dddd');
select * from zupan;

insert into zupanija(sifra,naziv,zupan)
		values(null,'Županija',1),
			   (null,'Županija2',2),
			   (null,'Županija3',3);
select * from zupanija;

insert into opcina(sifra,naziv)
values(null,'FAxa'),(null,'Jvada'),(null,'Klovsnk'),(null,'Mnjfvh'),(null,'Mvksd'),(null,'Plcas');
select * from opcina;

insert into mjesto(sifra,naziv)
values(null,'a'),(null,'b'),(null,'c'),(null,'d'),(null,'f'),(null,'g'),(null,'i'),(null,'o'),(null,'q'),(null,'e'),(null,'j'),(null,'n');
select * from mjesto;


update mjesto set
opcina=5
where sifra=1;
update mjesto set
opcina=1
where sifra=2;
update mjesto set
opcina=2
where sifra =3;
update mjesto set
opcina=3
where sifra =4;
update mjesto set
opcina=4
where sifra =5;

select * from opcina;
delete from opcina 
where sifra=6;
delete from mjesto
where opcina=5;
delete from opcina
where sifra=5;





