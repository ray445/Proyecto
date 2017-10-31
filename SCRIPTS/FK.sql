use Proyecto
go

----fk de otras tablas a mantenimeinto -----
alter table Mantenimiento add foreign key (idtipo) references TipoMantenimeinto (idtipom)
go

alter table Mantenimiento add foreign key (idperiodo) references Periodo (idperiodo)
go

alter table Mantenimiento add foreign key (idactivos) references Activos (idactivos)
go

alter table Mantenimiento add foreign key (idusuario) references Usuario ( idusuario)
go

alter table Mantenimiento add foreign key (idcheklist) references checklist (idchecklist)
go

--FK de cheklist a preguntas---
alter table Preguntas add foreign key (idchecklist) references checklist (idchecklist)
go

--FK de mantenimeinto a modificacion----
alter table Modificar add foreign key ( idmantenimeinto) references Mantenimiento(idmantenimeinto)
go

--FK de usuarios a activos ----
alter table Activos add foreign key (idusuario) references Usuario (idusuario)
go