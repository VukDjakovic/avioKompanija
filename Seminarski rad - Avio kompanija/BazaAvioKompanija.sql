create database BazaAvioKompanija
go
use BazaAvioKompanija
go

create table Destinacija(
ID_destinacije int primary key identity(0,1) not null,
Drzava nvarchar(30) not null,
Grad nvarchar(30) not null
)

create table Klijent(
ID_klijenta int primary key identity(0,1) not null,
Ime_klijenta nvarchar(30) not null,
Prezime_klijenta nvarchar(30) not null,
Kontakt_klijenta nvarchar (30) not null
)

create table Objekat(
ID_objekta int primary key identity(0,1) not null,
Vrsta_objekta nvarchar (30) not null,
Naziv_objekta nvarchar(20) not null,
Kontakt_objekta nvarchar(20) not null
)

create table Karta(
ID_karte int primary key identity(0,1) not null,
Cena varchar(20) not null,
Datum date not null
)

create table Klasa(
ID_klase int primary key identity(0,1) not null,
Vrsta_klase nvarchar (30) not null,
Broj_sedista nvarchar(10) not null
)

alter table Objekat
add ID_destinacije int references Destinacija(ID_destinacije)
on update cascade
on delete cascade
go

alter table Karta
add ID_objekta int references Objekat(ID_objekta)
on update cascade
on delete cascade
go

alter table Karta
add ID_klijenta int references Klijent(ID_klijenta)
on update cascade
on delete cascade
go

alter table Karta
add ID_klase int references Klasa(ID_klase)
on update cascade
on delete cascade
go