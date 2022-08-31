create table editoriales(
    cod_edit number(3,0) constraint pk_cod primary key,
    nombre_edit varchar2(45),
    sitioweb varchar2(45),
    email varchar2(45)
);

insert into editoriales (cod_edit, nombre_edit, sitioweb, email)
values (100, 'Mc Graw Hill', 'www.hispana.cl', 'ventas.hispana.cl');
insert into editoriales (cod_edit, nombre_edit, sitioweb, email)
values (200, 'Antartica', 'www.antartica.cl', 'ventas.antartica.cl');
insert into editoriales (cod_edit, nombre_edit, sitioweb, email)
values (300, 'Planeta', 'www.planeta.cl', 'ventas.planeta.cl');
insert into editoriales (cod_edit, nombre_edit, sitioweb, email)
values (400, 'Aguilar', 'www.aguilar.com', 'ventas.aguilar.com');
insert into editoriales (cod_edit, nombre_edit, sitioweb, email)
values (500, 'Sirio', 'www.sirios.es','ventas.sirio.es');

create table libro(
    isbn number(5,0),
    titulo varchar2(45),
    autor varchar2(45),
    cod_edit number(3,0),
    constraint fk_code foreign key(cod_edit) references editoriales(cod_edit)
);
insert all into libro (isbn, titulo, autor, cod_edit)
values (10010, 'Ingenieria de Software', 'R.Pressman', cod_edit)
select cod_edit from editoriales where editoriales.cod_edit = 100;

insert all into libro (isbn, titulo, autor, cod_edit)
values (10030, 'Diseño de Bases de Datos Relacionales', 'J.Piñeiro', cod_edit)
select cod_edit from editoriales where editoriales.cod_edit = 100;

insert all into libro (isbn, titulo, autor, cod_edit)
values (10030, 'Analisis y Diseño de Sistemas', 'KendalKendal', cod_edit)
select cod_edit from editoriales where editoriales.cod_edit = 100;

insert all into libro (isbn, titulo, autor, cod_edit)
values (30030, 'Leyendas y Episiodios Chilenos', 'A.Diaz', cod_edit)
select cod_edit from editoriales where editoriales.cod_edit = 200;

insert all into libro (isbn, titulo, autor, cod_edit)
values (30010, 'Heist Cazar o ser Cazado', 'A.Godoy', cod_edit)
select cod_edit from editoriales where editoriales.cod_edit = 200;

insert all into libro (isbn, titulo, autor, cod_edit)
values (30020, 'La Casa de los Espiritus', 'I.Allende', cod_edit)
select cod_edit from editoriales where editoriales.cod_edit = 200;


insert all into libro (isbn, titulo, autor, cod_edit)
values (20030, 'Caballo de Troya Coleccion de Lujo', 'J. Benitez', cod_edit)
select cod_edit from editoriales where editoriales.cod_edit = 300;

insert all into libro (isbn, titulo, autor, cod_edit)
values (20010, 'Cicatriz', 'J. Sosa', cod_edit)
select cod_edit from editoriales where editoriales.cod_edit = 300;

insert all into libro (isbn, titulo, autor, cod_edit)
values (20020, 'La Chica del Tren', 'Pm Hawkins', cod_edit)
select cod_edit from editoriales where editoriales.cod_edit = 300;
