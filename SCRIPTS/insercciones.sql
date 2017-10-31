use Proyecto
go

-----insercciones usuario ------
insert into Usuario values (50501,'JOEL','TORRES' ,'DELGADO','jtorres@lincolnelectric.com.mx','mantenimeinto')
go
insert into Usuario values (50526,'HUMBERTO','AGUILERA' ,'ESPARZA','haguilera@lincolnelectric.com.mx','sistemas')
go
insert into Usuario values (50530,'KARLA',' ACOSTA ' ,' RAMIREZ','kacosta@lincolnelectric.com.mx','Recursos humanos')
go
insert into Usuario values (50506,'VERONICA',' LUCIO ' ,' GONZALEZ','vlucio@lincolnelectric.com.mx','Recursos Humanos')
go
insert into Usuario values (50510,'ENRIQUE ','SALDAÑA','ZAMARRON','esaldaña@lincolnelectric.com.mx','alamcen')
go
insert into Usuario values (50507,'MARIA SERENA','MEJIA ',' DE ALBA','mmejia@lincolnelectric.com.mx','PCP')
go
insert into Usuario values (50508,'DANIEL ISIDRO ',' VALDEZ ',' GOMEZ','dvaldez@lincolnelectric.com.mx','supervisor maquinas')
go
insert into Usuario values (50543,'ROCIO ','REYES',' RENDON','rreyes@lincolnelctric.com.mx','ingenieria')
go

---- inserciones de Activos ----- 
insert into Activos values('COM-000027','10-10-2016','PC','DESKTOP','DELL','OPTIPLEX 6X520','PENTUM4 HT INSIDE
 1GB RAM 80GB',50501,'7CKSB91','LEMA','no tiene','Mantenimeinto') 
 go
insert into Activos values ('COM-000039','09-15-2016','PC','SERVER','DELL','POWEREDGE1850','80 GB DD, 2 GBDERAM',
50526,'639B01','LEMA','no tiene','sistemas')
go
insert into Activos values ('COM-000043','09-15-2016','PC','SERVER','DELL','PROLIANT ML570','8 GB RAM, 72.8 GB, 146.8 GB D.D.'
,50526,'D313LK64H021','LEMA','no tiene ','Sistemas')
go
insert into Activos values ('COM-000074','09-15-2016','PC','SERVER','DELL','POWER EDGE 2950','146 GB Y 36 GB D.D. 4 GB RAM'
,50526,'BY7MJF1','LEMA','no tiene ','Sistemas')
go
insert into Activos values ('COM-000102','09-20-2016','PC','LAPTOP','LENOVO','THINKPAD EDGE 01962BS','2GB RAM, 700GB D.D.',
50530,'LRAYGFC','LEMA','no tiene ','Recursos humanos')
go
insert into Activos values ('COM-000115','11-15-2016','PC','LAPTOP','DELL','Latitude E6410','4GB RAM, 150GB D.D.',
50506,'F0FG1Q1','LEMA','no tiene ','RH')
go
insert  into Activos values ('COMP-000011','08/12/2016','PC','DESKTOP','HP','HP PRO 300 SMALL FORM FACTOR PC','Core i5, RAM 8 Gb , DD 160GB',
50510,'MXL0442HY8','LEMAQ','no tiene ','Alamacen')
go
insert  into Activos values ('COMP-000045','02/12/2016','PC','LAPTOP','DELL','LATITUDE D620','CORE I5 RAM 2 DD 50GB BECARIO PCP',
50507,'DPBF8C1','LEMAQ',' no tiene ','PCP')
go
insert  into Activos values ('COMP-000051','08/12/2016','PC','DESKTOP','DELL','OPTIPLEX 320','SUPERVISION DE MAQUINAS BECARIO',
50508,'G8F77D1','LEMAQ','FALLA TAPA DEL DVD, CARCASA DE CPU QUEBRADA','supervisor maquinas')
go
insert  into Activos values ('COMP-000061','04/07/2016','PC','DESKTOP','DELL','OPTIPLEX 330','CORE PENTIUM DUAL CORE, 4GB, 750 GB DISCO DURO',
50543,'CDDTKF1','LEMAQ','HACE MUCHIO RUIDO AL ENCENDER','Ingenieria')
go



----insercciones de tipo---
insert into TipoMantenimeinto values (1,'preventivo')
go
insert into TipoMantenimeinto values (2,'Correctivo')
go

----insercciones Periodo -----
insert into Periodo values (1,'Primero')
go
insert into Periodo values (2,'Segundo')
go

----inserciones Checklist -----
insert into checklist values (1,1,'Activo','LEMA/LEMAQ')
go

---inserciones en preguntas----
insert into Preguntas values (1,1,'Limpieza a carcasa.')
go
insert into Preguntas values (2,1,'Limpieza a teclado.')
go
insert into Preguntas values (3,1,'Limpieza a monitor')
go
insert into Preguntas values (4,1,'Limpieza a tarjetas')
go
insert into Preguntas values (5,1,'Limpieza a mouse ')
go
insert into Preguntas values (6,1,'Limpieza de Ventirladores')
go
insert into Preguntas values (7,1,'Conector de red en buen estado')
go
insert into Preguntas values (8,1,'cargador en buen estado ')
go
insert into Preguntas values (9,1,'Errores de windows')
go
insert into Preguntas values (10,1,'Se aplicaron actualizaciones.')
go
insert into Preguntas values (11,1,'antivirus instalado .')
go

----inserciones a mantenieminto ---
insert into Mantenimiento values(1,'10/12/2017','10:00',1,2,'COMP-000045',50507,1,'n','niniguna','CORE I5 RAM 2 DD 50GB BECARIO PCP','LEMAQ','Agendada')
go
insert into Mantenimiento values(2,'11/07/2017','14:00',1,1,'COMP-000011',50510,1,'s','niniguna','Core i5, RAM 8 Gb , DD 160GB','LEMAQ','Realiza')
go
insert into Mantenimiento values(3,'12/08/2017','15:00',1,2,'COMP-000061',50508,1,'n','FALLA TAPA DEL DVD, CARCASA DE CPU QUEBRADA','SUPERVISION DE MAQUINAS BECARIO','LEMAQ','Reagendar')
go

----isnserccion en modificar o reagendar---
--select * 
--from Mantenimiento
insert into Modificar values (1,'12/08/2017','05/09/17','agendado',3)