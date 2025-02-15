if object_id ('libros') is not null
  drop table libros;

create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key(codigo)
);

insert into libros values('El aleph','Borges','Emece',15.90);
insert into libros values('Antolog�a po�tica','Borges','Planeta',null);
insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
insert into libros values('Matematica estas ahi','Paenza','Siglo XXI',15);
insert into libros values('Martin Fierro','Jose Hernandez',default,40);
insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',null);
insert into libros values('Uno','Richard Bach','Planeta',20);

select * from libros;
select count_big(*)
  from libros;

select * from libros;
select count_big(*)
  from libros
  where editorial='Planeta';

select * from libros;
select count_big(precio)
  from libros;

-- Contamos las editoriales (sin repetir):
select * from libros;
select count_big(distinct editorial)
  from libros;