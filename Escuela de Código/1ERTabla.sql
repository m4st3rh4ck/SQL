CREATE TABLE docentes (
  id_docente INT UNSIGNED NOT NULL
             PRIMARY KEY AUTO_INCREMENT,
  /*NOT NULL es para especificar que todo lo anterior no va a estar vacio, AUTO_INCREMENENT PARA QUE PASE LO SIGUIENTE
  
  1.- 
  2.-
  3.- 
  
  */
  nombre_docente VARCHAR(50) NOT NULL, 
  clave_docente VARCHAR(10) NOT NULL,
  correo_docente VARCHAR(50) NOT NULL
);
 
/* Insertar información en la tabla */
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente) 
VALUES ('Daniela Morales', '13092004', 'danymorg@gmail.com');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente) 
VALUES ('Valeria', '13092004', 'valeria@gmail.com');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente) 
VALUES ('Ayline', '21112004', 'aylineg@gmail.com');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente) 
VALUES ('JesuCristo', '24120000', 'chuchomorg@gmail.com');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente) 
VALUES ('John', '78452004', 'NA');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente) 
VALUES ('Cena', 'NA', 'NA');
INSERT INTO docentes (nombre_docente, clave_docente, correo_docente) 
VALUES ('John Cena',  "" , "");

/* Actualizar información en la tabla */
UPDATE docentes
SET clave_docente = 'Xxxx',
    correo_docente = 'XXXXX'
WHERE nombre_docente = 'John Cena';

UPDATE docentes
SET correo_docente = 'AAAAA'
WHERE nombre_docente = 'John';

UPDATE docentes 
SET clave_docente = 'WWWWW',
    correo_docente = 'POIUY'
WHERE nombre_docente = 'Cena';
