IF not exists(select name from sys.databases where name = 'Cine')
CREATE DATABASE Cine;
go

use Cine 
IF not exists(select * from sys.tables where name = 'Pelicula')
Create table Pelicula (
IDPelicula int not null identity (1,1) PRIMARY KEY,
Poster image not null,
Titulo varchar (50) not null,
Sinopsis varchar (50) not null,
Director varchar (50) not null,
Genero varchar (50) not null);
go

use Cine 
IF not exists(select * from sys.tables where name = 'Ranking') 
Create table Ranking(
IDRanking int not null IDENTITY (1,1) PRIMARY KEY,
IDPelicula int not null unique,
Titulo varchar (50) not null,
Puntaje int,
NoVotos int,
FOREIGN KEY (IDPelicula) REFERENCES Pelicula (IDPelicula));
go
