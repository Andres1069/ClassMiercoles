CREATE DATABASE IF NOT EXISTS tienda;

USE tienda;

CREATE TABLE IF NOT EXISTS t_usuarios(
    id_usuario INT(11) AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL,
    password VARCHAR(255) NOT NULL,
    rol VARCHAR(20),
    imagen VARCHAR(255),
    CONSTRAINT pk_usuarios PRIMARY KEY(id_usuario),
    CONSTRAINT uq_email UNIQUE(email)
)ENGINE=InnoDB;

INSERT INTO t_usuarios VALUES (NULL , 'admin', 'admin', 'admin@admin.com', '1234', 'admin', 'imagen');