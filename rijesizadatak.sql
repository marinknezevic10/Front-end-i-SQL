drop database if exists zadatak1;
create database zadatak1 character set utf8mb4 COLLATE utf8mb4_croatian_ci;
use zadatak1;

create table svekar(
	sifra int not null primary key auto_increment,
	bojaociju varchar(40) not null,
	prstena int,
	dukserica varchar(41),
	lipa decimal(13,8),
	eura decimal(12,7),
	majica varchar(35)

);

create table sestrasvekar(
	sifra int not null primary key auto_increment,
	sestra int,
	svekar int
);

create table sestra(
	sifra int not null primary key auto_increment,
	introvertno bit,
	haljina varchar(31) not null,
	maraka decimal(16,6),
	hlace varchar(46) not null,
	narukvica int not null
);

create table zena(
	sifra int not null primary key auto_increment,
	treciputa datetime,
	hlace varchar(46),
	kratkamajica varchar(31)not null,
	jmbag char(11)not null,
	bojaociju varchar(39)not null,
	haljina varchar(44),
	sestra int not null
);

create table muskarac(
	sifra int not null primary key auto_increment,
	bojaociju varchar(50)not null,
	hlace varchar(30),
	modelnaocala varchar(43),
	maraka decimal(14,5)not null,
	zena int not null
);

create table mladic(
	sifra int not null primary key auto_increment,
	suknja varchar(50)not null,
	kuna decimal(16,8)not null,
	drugiputa datetime,
	asocijalno bit,
	ekstrovertno bit not null,
	dukserica varchar(48)not null,
	muskarac int
);

create table punac(
	sifra int not null primary key auto_increment,
	ogrlica int,
	gustoca decimal(14,9),
	hlace varchar(41)not null
);

create table cura(
	sifra int not null primary key auto_increment,
	novcica decimal(16,5)not null,
	gustoca decimal(18,6)not null,
	lipa decimal(13,10),
	ogrlica int not null,
	bojakose varchar(38),
	suknja varchar(36),
	punac int
);

alter table sestrasvekar add foreign key(svekar) references svekar(sifra);
alter table zena add foreign key(sestra) references sestra(sifra);
alter table muskarac add foreign key(zena) references zena(sifra);
alter table mladic add foreign key(muskarac) references muskarac(sifra);
alter table cura add foreign key(punac) references punac(sifra);
alter table sestrasvekar add foreign key(sestra) references sestra(sifra);

select * from sestrasvekar;
insert into sestrasvekar(sifra)
values(null),(null),(null);

insert into sestra(sifra,haljina,hlace,narukvica)
values(null,'Haljinasta','Hlacaste',7),
(null,'Haljinaa','Hlaceee',5),
(null,'Haljaa','Hlana',9);
select * from sestra;

insert into zena(sifra,kratkamajica,jmbag,bojaociju,sestra)
values(null,'Maja',11111111111,'Smeđa',3),
(null,'Kratka majica',99999999999,'Plava',2),
(null,'Mana kratka',12345678912,'Crna',1);
select * from zena;

insert into muskarac(sifra,bojaociju,maraka,zena)
values(null,'Smeđa',450.00,1),
(null,'Plava',1000.00,3),
(null,'Crna',10000.00,2);
select * from muskarac;

update cura set gustoca=15.77;
select * from cura;

delete from mladic where kuna >15.78;
select * from zena;
select kratkamajica,hlace from zena;

select b.kratkamajica
from sestra a inner join zena b on a.sifra=b.sestra
where a.hlace like '%ana%';

select f.dukserica, a.asocijalno, b.hlace
from mladic a 
inner join muskarac b on a.muskarac=b.sifra
inner join zena c on c.sifra=b.zena
inner join sestra d on d.sifra=c.sestra
inner join sestrasvekar e on e.sestra=d.sifra 
inner join svekar f on f.sifra=e.svekar
where c.hlace like 'a%' and d.haljina like '%ba%';
