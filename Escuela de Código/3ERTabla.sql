CREATE TABLE docentes(
	id_docente INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_docente VARCHAR(50) NOT NULL,
	clave_docente VARCHAR(15) NOT NULL,
	correo_docente VARCHAR(50) NOT NULL
);

INSERT INTO docentes (nombre_docente, clave_docente, correo_docente)
VALUES ('María González', 'DOP-123', 'maria.gonzalez@pilares.net');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente)
VALUES ('José Rodríguez', 'DOP-456', 'jose.rodriguez@pilares.net');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente)
VALUES ('Juan Pérez', 'DOP-789', 'juan.perez@pilares.net');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente)
VALUES ('Francisco Hernández', 'DOP-234', 'francisco.hernandez@pilares.net');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente)
VALUES ('Luis López', 'DOP-567', 'luis.lopez@pilares.net');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente)
VALUES ('Ana Torres', 'DOP-890', 'ana.torres@pilares.net');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente)
VALUES ('Carlos Méndez', 'DOP-345', 'carlos.mendez@pilares.net');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente)
VALUES ('Isabel Ramírez', 'DOP-678', 'isabel.ramirez@pilares.net');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente)
VALUES ('Ricardo Vargas', 'DOP-901', 'ricardo.vargas@pilares.net');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente)
VALUES ('Laura Jiménez', 'DOP-432', 'laura.jimenez@pilares.net');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente)
VALUES ('Laura Ramírez', 'DOP-025', 'laura.ramirez@pilares.net');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente)
VALUES ('Sofia Ledesma', 'DOP-159', 'sofia.ledesma@pilares.net');

SELECT * 
  FROM docentes
 LIMIT 3;

-- Consulta 2
SELECT nombre_docente, 
	   correo_docente 
  FROM docentes
 LIMIT 5;
