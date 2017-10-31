create database Proyecto
go
 use Proyecto
 go

 create table Mantenimiento(
 idmantenimeinto int primary key,
 fplaneada date not null,
 hora time not null,
 idtipo int not null, 
 idperiodo int not null,
 idactivos varchar(50) not null,
 idusuario int not null,
 idcheklist int not  null,
 Resespueste varchar(5) not null,
 obserevaciones varchar(200) not null,
 Caracteristicas varchar(100),
 planta varchar (20) not null,
 estatus varchar(20) not null)
 go

 create table Activos(
 idactivos varchar(50) primary key,
 falta date not null,
 tipo varchar(50) not null,
 subtipo varchar(50) not null,
 marca varchar(50)not null,
 modelo varchar(70) not null,
 caracteristicas varchar(70) not null,
 idusuario int not null,
 nserie varchar(30) not null,
 planta varchar(10) not null,
 observaciones varchar(70) not null,
 area varchar(50) not null)
 go 

 create table Usuario(
 idusuario int primary key,
 nombre varchar(30) not null,
 apaterno varchar(30) not null,
 amaterno varchar(30) not null,
 correo varchar(80)not null,
 area varchar(20) not null)
 go

 Create table checklist (
 idchecklist int primary key,
 vercion int not null,
 estado varchar(20) not null,
 planta varchar(10) not null)
 go

 create table Preguntas(
 idpreguntas int primary key,
 idchecklist int not null,
 pregunta varchar(200) not null)
 go

 create table Modificar(
 idmodificar int primary key,
 fplaneada date not null,
 fpospuesta date not null,
 estatus varchar(20) not null,
 idmantenimeinto int not null)
 go

 create table TipoMantenimeinto(
 idtipom int primary key,
 tipo varchar(20) not null,)
 go

 create table Periodo(
 idperiodo int primary key,
 periodo varchar(25) not null)
 go
