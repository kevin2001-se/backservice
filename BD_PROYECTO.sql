create DATABASE BD;
use BD;
CREATE TABLE tipoUsuario (
    codigoTipoUsu int auto_increment,
    tipo varchar(250) not null,
    Constraint PK_TipoUsuario PRIMARY KEY(codigoTipoUsu)
);

insert into tipoUsuario(tipo) values("Cliente");

CREATE TABLE usuario (
    codigoUsu int auto_increment,
    nombre varchar(250) not null,
    correo varchar(250) not null,
    contrasena varchar(200) not null,
    foto text null,
    codigoTipoUsu int,
    Constraint PK_Usuario PRIMARY KEY(codigoUsu),
   CONSTRAINT fk_tipo_Usuario FOREIGN KEY (codigoTipoUsu) REFERENCES tipoUsuario (codigoTipoUsu) ON DELETE NO ACTION ON UPDATE NO ACTION	
);



CREATE TABLE Tarea (
	codigoTarea int auto_increment,
	nombre varchar(250) not null,
    codigoUsu int,
	descripcion text not null,
	fechaTarea date not null,
	CONSTRAINT fk_tipo_Usuario2 FOREIGN KEY (codigoUsu) REFERENCES usuario (codigoUsu) ON DELETE NO ACTION ON UPDATE NO ACTION,
    Constraint PK_Tarea PRIMARY KEY(codigoTarea)
);

CREATE TABLE Archivo (
	codigoArchivo int auto_increment,
	nombre varchar(250) not null,
    codigoUsu int,
	tamaño varchar(250) not null,
    FOREIGN KEY (codigoUsu) REFERENCES usuario (codigoUsu),
    Constraint PK_Archivo PRIMARY KEY(codigoArchivo)
);

select * from usuario;
