create table sede (
    cod_sede varchar(7) constraint pk_cod primary key,
    nombre_sede varchar2(45),
    capacidad_sede number(7)
);

create table carreras (
    cod_carrera integer constraint pk_codc primary key,
    nombre_carrera varchar2(45) not null,
    cod_sede varchar(7),
    constraint fk_cod_sede foreign key (cod_sede) references sede(cod_sede)
);



-----insert data----
insert into sede (cod_sede, nombre_sede, capacidad_sede) values (1,'inacap maipu',1000);
insert into sede (cod_sede, nombre_sede, capacidad_sede) values (2,'inacap cerrillo',1000);
insert into sede (cod_sede, nombre_sede, capacidad_sede) values (3,'inacap renca',1000);
insert into sede (cod_sede, nombre_sede, capacidad_sede) values (4,'inacap algo',1000);

insert into carreras(cod_carrera, nombre_carrera, cod_sede) values ('','reposteria',1);
