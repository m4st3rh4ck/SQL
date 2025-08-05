/*
-
- Nombre:      BD_Ejemplo_PilaresJA
- Descripción: Base de datos que simula la administración de un Pilares
- Realizado:   Antonio Perez
- Versión:     1.0 -- Construcción de la base de datos.
-
*/

-- Creación de Tablas

CREATE TABLE Docentes(
	id_docente INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_docente VARCHAR(30) NOT NULL,
	apellido_paterno_docente VARCHAR(30) NOT NULL,
	apellido_materno_docente VARCHAR(30) NOT NULL,
	clave_docente VARCHAR(15) NOT NULL
);

CREATE TABLE Informacion_Personal_Docentes(
	id_infoperdoc INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	curp_docente VARCHAR(20) NOT NULL,
	domicilio_docente VARCHAR(100) NOT NULL,
	correo_electronico_docente VARCHAR(50) NOT NULL,
	telefono_docente VARCHAR(15) NOT NULL,
	fecha_nacimiento_docente DATE NOT NULL,
	id_docente INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_docente) REFERENCES Docentes(id_docente)
);

CREATE TABLE Informacion_Laboral_Docentes(
	id_infolabdoc INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	fecha_contratacion DATE NOT NULL,
	salario FLOAT NOT NULL,
	estado_laboral VARCHAR(15) NOT NULL,
	id_docente INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_docente) REFERENCES Docentes(id_docente)
);

CREATE TABLE Areas(
	id_area INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_area VARCHAR(50) NOT NULL,
	clave_area VARCHAR(10) NOT NULL
);

CREATE TABLE Salones(
	id_salon INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_salon VARCHAR(30) NOT NULL,
	clave_salon VARCHAR(10) NOT NULL,
	ubicacion_salon VARCHAR(30) NOT NULL
);

CREATE TABLE Talleres(
	id_taller INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_taller VARCHAR(50) NOT NULL,
	id_docente INT UNSIGNED NOT NULL,
	id_area INT UNSIGNED NOT NULL,
	id_salon INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_docente) REFERENCES Docentes(id_docente),
	FOREIGN KEY (id_area) REFERENCES Areas(id_area),
	FOREIGN KEY (id_salon) REFERENCES Salones(id_salon)
);

CREATE TABLE Alumnos(
	id_alumno INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_alumno VARCHAR(30) NOT NULL,
	apellido_paterno_alumno VARCHAR(30) NOT NULL,
	apellido_materno_alumno VARCHAR(30) NOT NULL,
	folio_alumno VARCHAR(15) NOT NULL
);

CREATE TABLE Taller_Alumnos(
	id_taller_alumno INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_alumno INT UNSIGNED NOT NULL,
	id_taller INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno),
	FOREIGN KEY (id_taller) REFERENCES Talleres(id_taller)
);

CREATE TABLE Informacion_Alumnos(
	id_info_alumno INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	curp_alumno VARCHAR(20) NOT NULL,
	domicilio_alumno VARCHAR(100) NOT NULL,
	correo_electronico_alumno VARCHAR(50) NOT NULL,
	telefono_alumno VARCHAR(15) NOT NULL,
	fecha_nacimiento_alumno DATE NOT NULL,
	id_alumno INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno)
);


-- Inserción de datos

INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Antonio', 'Ramírez', 'Sánchez', 'DPJA-456');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Sofía', 'Torres', 'Martínez', 'DPJA-789');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Eduardo', 'Pérez', 'Gómez', 'DPJA-234');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Isabel', 'Morales', 'Fernández', 'DPJA-567');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Ángel', 'Ruiz', 'Herrera', 'DPJA-890');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Alejandra', 'Ortiz', 'Jiménez', 'DPJA-345');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Javier', 'Castillo', 'López', 'DPJA-678');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Patricia', 'Mendoza', 'Vargas', 'DPJA-901');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Andrés', 'Gutiérrez', 'Ramírez', 'DPJA-012');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Andrea', 'Chávez', 'Morales', 'DPJA-123');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Manuel', 'Ríos', 'García', 'DPJA-654');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Beatriz', 'Flores', 'Rodríguez', 'DPJA-321');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Tomás', 'Navarro', 'Pérez', 'DPJA-876');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Lucía', 'Salazar', 'Torres', 'DPJA-543');
INSERT INTO Docentes(nombre_docente, apellido_paterno_docente, apellido_materno_docente, clave_docente) VALUES ('Armando', 'Vázquez', 'Hernández', 'DPJA-098');

INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('RASA910923XX00', 'Avenida Juárez, 333, Colonia Centro, Cuauhtémoc, Ciudad de México', 'antonio.ramirez@pilares.net', '5519876543', '1991-09-23', 1);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('TOMS951105XX00', 'Avenida Bucareli, 555, Colonia Juárez, Cuauhtémoc, Ciudad de México', 'sofia.torres@pilares.net', '5523456789', '1995-11-05', 2);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('PEGE850130XX00', 'Calle Río Lerma, 666, Colonia Cuauhtémoc, Cuauhtémoc, Ciudad de México', 'eduardo.perez@pilares.net', '5534567890', '1985-01-30', 3);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('MOFI900618XX00', 'Calle Río Tíber, 888, Colonia Cuauhtémoc, Cuauhtémoc, Ciudad de México', 'isabel.morales@pilares.net', '5545678901', '1990-06-18', 4);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('RUHA821227XX00', 'Avenida Morelos, 999, Colonia Centro, Cuauhtémoc, Ciudad de México', 'angel.ruiz@pilares.net', '5556789012', '1982-12-27', 5);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('ORJA930414XX00', 'Calle Río Pánuco, 1011, Colonia Cuauhtémoc, Cuauhtémoc, Ciudad de México', 'alejandra.ortiz@pilares.net', '5567890123', '1993-04-14', 6);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('CALJ810212XX00', 'Avenida Independencia, 1212, Colonia Centro, Cuauhtémoc, Ciudad de México', 'javier.castillo@pilares.net', '5578901234', '1981-02-12', 7);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('MEVP881021XX00', 'Calle Río Rhin, 1313, Colonia Cuauhtémoc, Cuauhtémoc, Ciudad de México', 'patricia.mendoza@pilares.net', '5589012345', '1988-10-21', 8);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('GURA940507XX00', 'Avenida Balderas, 1414, Colonia Centro, Cuauhtémoc, Ciudad de México', 'andres.gutierrez@pilares.net', '5590123456', '1994-05-07', 9);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('CHMA900317XX00', 'Calle Río Sena, 1515, Colonia Cuauhtémoc, Cuauhtémoc, Ciudad de México', 'andrea.chavez@pilares.net', '5512345678', '1990-03-17', 10);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('RIGM830528XX00', 'Avenida Juárez, 1616, Colonia Centro, Cuauhtémoc, Ciudad de México', 'manuel.rios@pilares.net', '5523456780', '1983-05-28', 11);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('FLRB840404XX00', 'Calle Río Mississippi, 1717, Colonia Cuauhtémoc, Cuauhtémoc, Ciudad de México', 'beatriz.flores@pilares.net', '5534567891', '1984-04-04', 12);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('NAPT930730XX00', 'Avenida Paseo de la Reforma, 1818, Colonia Tabacalera, Cuauhtémoc, Ciudad de México', 'tomas.navarro@pilares.net', '5545678902', '1993-07-30', 13);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('SATL870625XX00', 'Avenida Cuauhtémoc, 909, Colonia Doctores, Cuauhtémoc, Ciudad de México', 'lucia.salazar@pilares.net', '5556789013', '1987-06-25', 14);
INSERT INTO Informacion_Personal_Docentes(curp_docente, domicilio_docente, correo_electronico_docente, telefono_docente, fecha_nacimiento_docente, id_docente) VALUES ('VAHA920110XX00', 'Avenida Hidalgo, 111, Colonia Guerrero, Cuauhtémoc, Ciudad de México', 'armando.vazquez@pilares.net', '5567890124', '1992-01-10', 15);

INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-01-02', 9500.00, 'Activo', 1);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-01-02', 9500.00, 'Activo', 2);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-01-02', 9500.00, 'Activo', 3);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-01-02', 9500.00, 'Baja', 4);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-01-02', 9000.00, 'Activo', 5);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-01-02', 8000.00, 'Activo', 6);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-05-06', 8000.00, 'Activo', 7);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-05-06', 8000.00, 'Activo', 8);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-01-02', 8500.00, 'Activo', 9);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-01-02', 8500.00, 'Activo', 10);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-01-02', 8500.00, 'Incapacidad', 11);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-05-06', 8500.00, 'Activo', 12);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-01-02', 7000.00, 'Activo', 13);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-01-02', 7000.00, 'Incapacidad', 14);
INSERT INTO Informacion_Laboral_Docentes(fecha_contratacion, salario, estado_laboral, id_docente) VALUES ('2024-01-02', 7000.00, 'Activo', 15);

INSERT INTO Areas(nombre_area, clave_area) VALUES ('Ciberescuela', 'CES');
INSERT INTO Areas(nombre_area, clave_area) VALUES ('Autonomía Económica', 'AEC');
INSERT INTO Areas(nombre_area, clave_area) VALUES ('Deporte', 'DEP');
INSERT INTO Areas(nombre_area, clave_area) VALUES ('Cultura', 'CUL');

INSERT INTO Salones(nombre_salon, clave_salon, ubicacion_salon) VALUES ('Ciberescuela', 'CE', 'Planta Baja');
INSERT INTO Salones(nombre_salon, clave_salon, ubicacion_salon) VALUES ('Salon de Arte', 'SA', 'Planta Baja');
INSERT INTO Salones(nombre_salon, clave_salon, ubicacion_salon) VALUES ('Salón 1', 'S1', 'Piso 1');
INSERT INTO Salones(nombre_salon, clave_salon, ubicacion_salon) VALUES ('Salón 2', 'S2', 'Piso 2');
INSERT INTO Salones(nombre_salon, clave_salon, ubicacion_salon) VALUES ('Taller 1', 'T1', 'Piso 3');
INSERT INTO Salones(nombre_salon, clave_salon, ubicacion_salon) VALUES ('Taller 2', 'T2', 'Piso 4');
INSERT INTO Salones(nombre_salon, clave_salon, ubicacion_salon) VALUES ('Patio', 'PA', 'Exterior');

INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Prepa en Línea', 2, 1, 1);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Inglés Básico', 4, 1, 1);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Computación Básica', 1, 1, 1);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Canva', 1, 1, 1);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Regularización Prepa', 3, 1, 1);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Regularización Secundaria', 3, 1, 1);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Alfabetización Digital', 1, 1, 1);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('INEA', 2, 1, 1);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Asearía de Matemáticas', 3, 1, 1);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Clud de Lectura', 4, 1, 1);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Escuela de Código', 5, 1, 1);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Hoja de Cálculo', 5, 1, 1);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Taller de Corte y Confección', 6, 2, 6);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Joyería', 6, 2, 6);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Huertos Urbanos', 8, 2, 7);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Carpintería', 7, 2, 5);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Electricidad', 7, 2, 5);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Yoga', 10, 3, 3);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Entrenamiento Funcional', 10, 3, 3);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Box', 12, 3, 4);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Defensa Personal', 12, 3, 3);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Zumba', 10, 3, 4);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Futbol', 9, 3, 7);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Ajedrez', 11, 3, 2);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Cartonería', 13, 4, 2);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Pintura', 13, 4, 2);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Danza Árabe', 14, 4, 3);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Danza creativa', 14, 4, 4);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Batería y Percursión', 15, 4, 2);
INSERT INTO Talleres(nombre_taller, id_docente, id_area, id_salon) VALUES ('Taller de Guitarra', 15, 4, 2);

INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Hugo', 'Hernández', 'Bautista', '014PJA123');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Valeria', 'García', 'Salinas', '014PJA456');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Alejandro', 'Martínez', 'Vega', '014PJA789');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Diana', 'González', 'Gutiérrez', '014PJA024');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Ignacio', 'López', 'Trejo', '014PJA867');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Susana', 'Pérez', 'Herrera', '014PJA097');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Gonzalo', 'Sánchez', 'Ayala', '014PJA345');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Laura', 'Ramírez', 'Guerrero', '014PJA678');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Kevin', 'Cruz', 'Maldonado', '014PJA901');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Raquel', 'Flores', 'Núñez', '014PJA402');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Antonio', 'Rivera', 'Santiago', '014PJA750');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Camila', 'Torres', 'Paredes', '014PJA090');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Tomás', 'Reyes', 'Peña', '014PJA503');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Vanessa', 'Morales', 'Zamora', '014PJA876');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Julieta', 'Ortiz', 'Robles', '014PJA209');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Beatriz', 'Gutiérrez', 'Rivas', '014PJA654');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Rafael', 'Jiménez', 'Campos', '014PJA987');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Hortensia', 'Mendoza', 'Salazar', '014PJA130');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Ulises', 'Castro', 'Meza', '014PJA065');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Adriana', 'Romero', 'Castañeda', '014PJA198');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Gloria', 'Herrera', 'Chávez', '014PJA967');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Manuel', 'Vargas', 'Medina', '014PJA043');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Pablo', 'Aguilar', 'Mora', '014PJA899');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Fabiola', 'Rojas', 'Andrade', '014PJA214');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Isabel', 'Guerrero', 'Montes', '014PJA708');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Walter', 'Delgado', 'Navarro', '014PJA461');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Karen', 'Paredes', 'Acosta', '014PJA259');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Natalia', 'Soto', 'León', '014PJA765');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Yolanda', 'Peña', 'Espinoza', '014PJA320');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Zacarías', 'Silva', 'Estrada', '014PJA098');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Cristian', 'Ramos', 'Silva', '014PJA008');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Teodoro', 'Domínguez', 'Tapia', '014PJA132');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Jimena', 'Navarro', 'Carrillo', '014PJA806');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Leonardo', 'Valdez', 'Rojas', '014PJA971');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Esteban', 'Espinoza', 'Rivera', '014PJA375');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Patricia', 'Salazar', 'Padilla', '014PJA604');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Yahir', 'Chávez', 'Romero', '014PJA009');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Noemí', 'Fuentes', 'Delgado', '014PJA058');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Ximena', 'León', 'Jiménez', '014PJA567');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Javier', 'Campos', 'Torres', '014PJA321');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Olivia', 'Vega', 'García', '014PJA543');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Oscar', 'Carrillo', 'Rocha', '014PJA890');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Marisol', 'Medina', 'Flores', '014PJA234');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Ricardo', 'Castro', 'Sandoval', '014PJA078');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Teresa', 'Núñez', 'Solís', '014PJA564');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Benjamín', 'Estrada', 'Cordero', '014PJA274');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Francisco', 'Ponce', 'Cabrera', '014PJA005');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Diego', 'Cabrera', 'Fuentes', '014PJA370');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Helena', 'Maldonado', 'Valencia', '014PJA011');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Paola', 'Tapia', 'López', '014PJA056');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Gabriel', 'Sandoval', 'Miranda', '014PJA432');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Nicolás', 'Serrano', 'Domínguez', '014PJA870');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Zoe', 'Montes', 'Martínez', '014PJA933');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Andrés', 'Villanueva', 'Orozco', '014PJA135');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Silvia', 'Meza', 'Pérez', '014PJA504');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Karen', 'Castañeda', 'Serrano', '014PJA012');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Laura', 'Solís', 'Morales', '014PJA210');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Antonio', 'Velázquez', 'Lara', '014PJA159');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Fernanda', 'Luna', 'Luna', '014PJA753');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Susana', 'Escobar', 'Rivera', '014PJA846');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Jorge', 'Valencia', 'Aguilar', '014PJA297');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Karen', 'Padilla', 'Gutiérrez', '014PJA468');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Luis', 'Robles', 'Vargas', '014PJA642');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Adriana', 'Acosta', 'Ponce', '014PJA879');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Beatriz', 'Miranda', 'Rivas', '014PJA681');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Camila', 'Mora', 'Ayala', '014PJA357');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Diana', 'Santiago', 'Castro', '014PJA924');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Eduardo', 'Andrade', 'Hernández', '014PJA531');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Daniel', 'Salinas', 'Robles', '014PJA786');
INSERT INTO Alumnos(nombre_alumno, apellido_paterno_alumno, apellido_materno_alumno, folio_alumno) VALUES ('Kevin', 'Zamora', 'Campos', '014PJA492');

INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (9, 1);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (42, 1);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (65, 1);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (61, 1);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (62, 1);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (63, 1);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (43, 1);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (57, 1);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (17, 2);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (38, 2);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (67, 2);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (62, 2);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (27, 3);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (54, 3);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (57, 3);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (12, 3);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (40, 4);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (36, 4);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (15, 4);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (39, 5);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (47, 5);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (46, 6);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (37, 6);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (12, 6);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (3, 7);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (25, 7);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (31, 8);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (37, 8);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (12, 8);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (39, 9);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (68, 9);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (26, 10);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (28, 10);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (35, 10);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (50, 10);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (36, 11);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (38, 11);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (30, 11);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (44, 11);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (29, 11);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (23, 11);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (63, 11);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (19, 12);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (45, 12);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (51, 12);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (54, 12);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (10, 13);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (41, 13);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (14, 13);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (24, 13);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (21, 14);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (17, 14);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (8, 14);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (36, 14);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (4, 14);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (55, 15);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (25, 15);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (21, 15);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (22, 16);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (58, 16);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (42, 16);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (22, 16);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (63, 17);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (68, 17);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (54, 17);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (42, 17);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (32, 17);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (31, 17);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (14, 18);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (62, 18);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (33, 18);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (20, 18);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (50, 18);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (1, 18);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (31, 18);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (6, 19);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (59, 19);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (54, 19);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (27, 19);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (3, 20);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (60, 20);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (34, 20);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (28, 21);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (65, 21);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (66, 21);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (53, 21);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (51, 21);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (52, 21);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (36, 22);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (38, 22);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (8, 22);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (10, 22);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (26, 22);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (55, 22);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (56, 22);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (37, 23);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (70, 23);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (49, 23);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (16, 24);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (51, 24);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (44, 25);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (59, 25);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (61, 25);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (28, 26);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (39, 26);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (35, 26);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (13, 26);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (36, 27);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (53, 27);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (67, 27);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (39, 27);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (15, 28);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (45, 28);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (69, 28);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (24, 28);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (47, 29);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (58, 29);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (68, 30);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (1, 30);
INSERT INTO Taller_Alumnos(id_alumno, id_taller) VALUES (41, 30);

INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('BAHH670315XX00', 'Calle Magnolia 123, Colonia Roma Norte, Alcaldía Cuauhtémoc, Ciudad de México', 'hugo.hernandez@correo.net', '5512345670', '1967-03-15', 1);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('SAGV841122XX00', 'Avenida del Sol 456, Colonia Condesa, Alcaldía Cuauhtémoc, Ciudad de México', 'valeria.garcia@correo.net', '5523456781', '1984-11-22', 2);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('VEMA530705XX00', 'Callejón del Río 789, Colonia Juárez, Alcaldía Cuauhtémoc, Ciudad de México', 'alejandro.martinez@correo.net', '5534567892', '1953-07-05', 3);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('GUGD780919XX00', 'Calle Lirio 101, Colonia San Rafael, Alcaldía Cuauhtémoc, Ciudad de México', 'diana.gonzalez@correo.net', '5545678903', '1978-09-19', 4);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('TRLI951208XX00', 'Avenida de los Pinos 202, Colonia Santa María la Ribera, Alcaldía Cuauhtémoc, Ciudad de México', 'ignacio.lopez@correo.net', '5556789014', '1995-12-08', 5);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('HEPS620427XX00', 'Calle Azucena 303, Colonia Buenavista, Alcaldía Cuauhtémoc, Ciudad de México', 'susana.perez@correo.net', '5567890125', '1962-04-27', 6);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('AYSG010814XX00', 'Callejón del Bosque 404, Colonia Guerrero, Alcaldía Cuauhtémoc, Ciudad de México', 'gonzalo.sanchez@correo.net', '5578901236', '2001-08-14', 7);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('GURL591003XX00', 'Avenida de la Luz 505, Colonia Tabacalera, Alcaldía Cuauhtémoc, Ciudad de México', 'laura.ramirez@correo.net', '5589012347', '1959-10-03', 8);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('MACK870621XX00', 'Calle Jacaranda 606, Colonia Doctores, Alcaldía Cuauhtémoc, Ciudad de México', 'kevin.cruz@correo.net', '5590123458', '1987-06-21', 9);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('NÚFR720109XX00', 'Callejón del Lago 707, Colonia Obrera, Alcaldía Cuauhtémoc, Ciudad de México', 'raquel.flores@correo.net', '5501234569', '1972-01-09', 10);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('SARA900530XX00', 'Avenida del Parque 808, Colonia Morelos, Alcaldía Cuauhtémoc, Ciudad de México', 'antonio.rivera@correo.net', '5512345680', '1990-05-30', 11);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('PATC550217XX00', 'Calle Tulipán 909, Colonia Roma Sur, Alcaldía Cuauhtémoc, Ciudad de México', 'camila.torres@correo.net', '5523456791', '1955-02-17', 12);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('PERT810726XX00', 'Callejón del Valle 111, Colonia Hipódromo, Alcaldía Cuauhtémoc, Ciudad de México', 'tomas.reyes@correo.net', '5534567902', '1981-07-26', 13);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('ZAMV641111XX00', 'Avenida de la Montaña 222, Colonia San Simón Tolnahuac, Alcaldía Cuauhtémoc, Ciudad de México', 'vanessa.morales@correo.net', '5545678013', '1964-11-11', 14);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('ROOJ990404XX00', 'Calle Orquídea 333, Colonia Atlampa, Alcaldía Cuauhtémoc, Ciudad de México', 'julieta.ortiz@correo.net', '5556789124', '1999-04-04', 15);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('RIGB510823XX00', 'Callejón del Sol 444, Colonia Peralvillo, Alcaldía Cuauhtémoc, Ciudad de México', 'beatriz.gutierrez@correo.net', '5567890235', '1951-08-23', 16);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('CAJR761212XX00', 'Avenida del Río 555, Colonia Ex Hipódromo de Peralvillo, Alcaldía Cuauhtémoc, Ciudad de México', 'rafael.jimenez@correo.net', '5578901346', '1976-12-12', 17);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('SAMH830301XX00', 'Calle Girasol 666, Colonia Vista Alegre, Alcaldía Cuauhtémoc, Ciudad de México', 'hortensia.mendoza@correo.net', '5589012457', '1983-03-01', 18);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('MECU691018XX00', 'Callejón del Bosque 777, Colonia Paulino Navarro, Alcaldía Cuauhtémoc, Ciudad de México', 'ulises.castro@correo.net', '5590123568', '1969-10-18', 19);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('CARA920607XX00', 'Avenida de los Pinos 888, Colonia Felipe Pescador, Alcaldía Cuauhtémoc, Ciudad de México', 'adriana.romero@correo.net', '5501234679', '1992-06-07', 20);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('CHHG570925XX00', 'Calle Azucena 999, Colonia Tránsito, Alcaldía Cuauhtémoc, Ciudad de México', 'gloria.herrera@correo.net', '5512345780', '1957-09-25', 21);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('MEVM800214XX00', 'Callejón del Lago 1010, Colonia Asturias, Alcaldía Cuauhtémoc, Ciudad de México', 'manuel.vargas@correo.net', '5523456891', '1980-02-14', 22);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('MOAP661129XX00', 'Avenida del Parque 1111, Colonia Buenos Aires, Alcaldía Cuauhtémoc, Ciudad de México', 'pablo.aguilar@correo.net', '5534567912', '1966-11-29', 23);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('ANRF930716XX00', 'Calle Tulipán 1212, Colonia Algarín, Alcaldía Cuauhtémoc, Ciudad de México', 'fabiola.rojas@correo.net', '5545678023', '1993-07-16', 24);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('MOGI520505XX00', 'Callejón del Valle 1313, Colonia Vista Hermosa, Alcaldía Cuauhtémoc, Ciudad de México', 'isabel.guerrero@correo.net', '5556789134', '1952-05-05', 25);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('NADW790824XX00', 'Avenida de la Montaña 1414, Colonia Obrera, Alcaldía Cuauhtémoc, Ciudad de México', 'walter.delgado@correo.net', '5567890245', '1979-08-24', 26);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('ACPK501025XX00', 'Calle Orquídea 1515, Colonia Guerrero, Alcaldía Cuauhtémoc, Ciudad de México', 'karen.paredes@correo.net', '5578901356', '1950-10-25', 27);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('LESN830614XX00', 'Callejón del Sol 1616, Colonia San Rafael, Alcaldía Cuauhtémoc, Ciudad de México', 'natalia.soto@correo.net', '5589012467', '1983-06-14', 28);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('ESPY770203XX00', 'Avenida del Río 1717, Colonia Santa María la Ribera, Alcaldía Cuauhtémoc, Ciudad de México', 'yolanda.pena@correo.net', '5590123578', '1977-02-03', 29);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('ESSZ900922XX00', 'Calle Girasol 1818, Colonia Buenavista, Alcaldía Cuauhtémoc, Ciudad de México', 'zacarias.silva@correo.net', '5501234689', '1990-09-22', 30);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('SIRC540511XX00', 'Callejón del Bosque 1919, Colonia Doctores, Alcaldía Cuauhtémoc, Ciudad de México', 'cristian.ramos@correo.net', '5512345790', '1954-05-11', 31);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('TADT850830XX00', 'Avenida de los Pinos 2020, Colonia Tabacalera, Alcaldía Cuauhtémoc, Ciudad de México', 'teodoro.dominguez@correo.net', '5523456901', '1985-08-30', 32);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('CANJ681219XX00', 'Avenida del Parque 5959, Colonia Atlampa, Alcaldía Cuauhtémoc, Ciudad de México', 'jimena.navarro@correo.net', '5534568012', '1968-12-19', 33);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('ROVL010315XX00', 'Calle Tulipán 6060, Colonia Peralvillo, Alcaldía Cuauhtémoc, Ciudad de México', 'leonardo.valdez@correo.net', '5545679123', '2001-03-15', 34);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('RIEE041122XX00', 'Callejón del Valle 6161, Colonia Ex Hipódromo de Peralvillo, Alcaldía', 'esteban.espinoza@correo.net', '5556780234', '2004-11-22', 35);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('PASP030705XX00', 'Calle Tulipán 2424, Colonia San Rafael, Alcaldía Cuauhtémoc, Ciudad de México', 'patricia.salazar@correo.net', '5567891345', '2003-07-05', 36);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('ROCY080919XX00', 'Callejón del Valle 2525, Colonia Santa María la Ribera, Alcaldía Cuauhtémoc, Ciudad de México', 'yahir.chavez@correo.net', '5578902456', '2008-09-19', 37);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('DEFN020427XX00', 'Avenida de la Montaña 2626, Colonia Buenavista, Alcaldía Cuauhtémoc, Ciudad de México', 'noemi.fuentes@correo.net', '5589013567', '2002-04-27', 38);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('JILX070621XX00', 'Calle Orquídea 2727, Colonia Guerrero, Alcaldía Cuauhtémoc, Ciudad de México', 'ximena.leon@correo.net', '5590124678', '2007-06-21', 39);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('TOCJ050217XX00', 'Callejón del Sol 2828, Colonia Tabacalera, Alcaldía Cuauhtémoc, Ciudad de México', 'javier.campos@correo.net', '5501235789', '2005-02-17', 40);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('GAVO010726XX00', 'Avenida del Río 2929, Colonia Doctores, Alcaldía Cuauhtémoc, Ciudad de México', 'olivia.vega@correo.net', '5512346890', '2001-07-26', 41);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('ROCO041111XX00', 'Calle Girasol 3030, Colonia Obrera, Alcaldía Cuauhtémoc, Ciudad de México', 'oscar.carrillo@correo.net', '5523457901', '2004-11-11', 42);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('FLMM000823XX00', 'Callejón del Bosque 3131, Colonia Morelos, Alcaldía Cuauhtémoc, Ciudad de México', 'marisol.medina@correo.net', '5534568022', '2000-08-23', 43);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('SACR061212XX00', 'Avenida de los Pinos 3232, Colonia Roma Sur, Alcaldía Cuauhtémoc, Ciudad de México', 'ricardo.castro@correo.net', '5545679133', '2006-12-12', 44);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('SONT030301XX00', 'Calle Azucena 3333, Colonia Hipódromo, Alcaldía Cuauhtémoc, Ciudad de México', 'teresa.nunez@correo.net', '5556780244', '2003-03-01', 45);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('COEB091018XX00', 'Callejón del Lago 3434, Colonia San Simón Tolnahuac, Alcaldía Cuauhtémoc, Ciudad de México', 'benjamin.estrada@correo.net', '5567891355', '2009-10-18', 46);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('CAPF070925XX00', 'Avenida del Parque 3535, Colonia Atlampa, Alcaldía Cuauhtémoc, Ciudad de México', 'francisco.ponce@correo.net', '5578902466', '2007-09-25', 47);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('FUCD000214XX00', 'Calle Tulipán 3636, Colonia Peralvillo, Alcaldía Cuauhtémoc, Ciudad de México', 'diego.cabrera@correo.net', '5589013577', '2000-02-14', 48);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('VAMH061129XX00', 'Callejón del Valle 3737, Colonia Ex Hipódromo de Peralvillo, Alcaldía Cuauhtémoc, Ciudad de México', 'helena.maldonado@correo.net', '5590124688', '2006-11-29', 49);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('LÓTP580306XX00', 'Avenida de la Montaña 3838, Colonia Vista Alegre, Alcaldía Cuauhtémoc, Ciudad de México', 'paola.tapia@correo.net', '5501235799', '1958-03-06', 50);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('MISG820925XX00', 'Calle Orquídea 3939, Colonia Paulino Navarro, Alcaldía Cuauhtémoc, Ciudad de México', 'gabriel.sandoval@correo.net', '5512346900', '1982-09-25', 51);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('DOSN651114XX00', 'Callejón del Sol 4040, Colonia Felipe Pescador, Alcaldía Cuauhtémoc, Ciudad de México', 'nicolas.serrano@correo.net', '5523458011', '1965-11-14', 52);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('MAMZ000503XX00', 'Avenida del Río 4141, Colonia Tránsito, Alcaldía Cuauhtémoc, Ciudad de México', 'zoe.montes@correo.net', '5534569122', '2000-05-03', 53);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('ORVA500822XX00', 'Calle Girasol 4242, Colonia Asturias, Alcaldía Cuauhtémoc, Ciudad de México', 'andres.villanueva@correo.net', '5545670233', '1950-08-22', 54);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('PÉMS771211XX00', 'Callejón del Bosque 4343, Colonia Buenos Aires, Alcaldía Cuauhtémoc, Ciudad de México', 'silvia.meza@correo.net', '5556781344', '1977-12-11', 55);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('SECK840430XX00', 'Avenida de los Pinos 4444, Colonia Algarín, Alcaldía Cuauhtémoc, Ciudad de México', 'karen.castaneda@correo.net', '5567892455', '1984-04-30', 56);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('MOSL681019XX00', 'Calle Azucena 4545, Colonia Vista Hermosa, Alcaldía Cuauhtémoc, Ciudad de México', 'laura.solis@correo.net', '5578903566', '1968-10-19', 57);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('LAVA910608XX00', 'Callejón del Lago 4646, Colonia Obrera, Alcaldía Cuauhtémoc, Ciudad de México', 'antonio.velazquez@correo.net', '5589014677', '1991-06-08', 58);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('LULF560127XX00', 'Avenida del Parque 4747, Colonia Guerrero, Alcaldía Cuauhtémoc, Ciudad de México', 'fernanda.luna@correo.net', '5590125788', '1956-01-27', 59);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('RIES020505XX00', 'Calle Tulipán 4848, Colonia San Rafael, Alcaldía Cuauhtémoc, Ciudad de México', 'susana.escobar@correo.net', '5501236899', '2002-05-05', 60);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('AGVJ011213XX00', 'Callejón del Valle 4949, Colonia Santa María la Ribera, Alcaldía Cuauhtémoc, Ciudad de México', 'jorge.valencia@correo.net', '5512347900', '2001-12-13', 61);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('GUPK041020XX00', 'Avenida de la Montaña 5050, Colonia Buenavista, Alcaldía Cuauhtémoc, Ciudad de México', 'karen.padilla@correo.net', '5545670243', '2004-10-20', 62);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('VARL050609XX00', 'Calle Orquídea 5151, Colonia Guerrero, Alcaldía Cuauhtémoc, Ciudad de México', 'luis.robles@correo.net', '5556781354', '2005-06-09', 63);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('POAA000128XX00', 'Callejón del Sol 5252, Colonia Tabacalera, Alcaldía Cuauhtémoc, Ciudad de México', 'adriana.acosta@correo.net', '5567892465', '2000-01-28', 64);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('RIMB020925XX00', 'Avenida del Río 5353, Colonia Doctores, Alcaldía Cuauhtémoc, Ciudad de México', 'beatriz.miranda@correo.net', '5578903576', '2002-09-25', 65);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('AYMC051114XX00', 'Calle Girasol 5454, Colonia Obrera, Alcaldía Cuauhtémoc, Ciudad de México', 'camila.mora@correo.net', '5589014687', '2005-11-14', 66);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('CASD060127XX00', 'Callejón del Bosque 5555, Colonia Morelos, Alcaldía Cuauhtémoc, Ciudad de México', 'diana.santiago@correo.net', '5590125798', '2006-01-27', 67);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('HEAE060602XX00', 'Avenida de los Pinos 5656, Colonia Roma Sur, Alcaldía Cuauhtémoc, Ciudad de México', 'eduardo.andrade@correo.net', '5501236909', '2006-06-02', 68);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('ROSD030121XX00', 'Calle Azucena 5757, Colonia Hipódromo, Alcaldía Cuauhtémoc, Ciudad de México', 'daniel.salinas@correo.net', '5512348010', '2003-01-21', 69);
INSERT INTO Informacion_Alumnos(curp_alumno, domicilio_alumno, correo_electronico_alumno, telefono_alumno, fecha_nacimiento_alumno, id_alumno) VALUES ('CAZK050429XX00', 'Callejón del Lago 5858, Colonia San Simón Tolnahuac, Alcaldía Cuauhtémoc, Ciudad de México', 'kevin.zamora@correo.net', '5523459121', '2005-04-29', 70);

/*QUERY*/
SELECT nombre_docente AS Nombre,
apellido_paterno_docente AS Apellido_Paterno,
apellido_materno_docente AS Apellido_Materno 
FROM Docentes
UNION
SELECT nombre_alumno AS Nombre,
apellido_paterno_alumno AS Apellido_Paterno,
apellido_materno_alumno AS Apellido_Materno
FROM Alumnos;

/*UNIR LA MISMA TABLA DOS VECES*/
SELECT nombre_docente AS Nombre,
apellido_paterno_docente AS Apellido_Paterno,
apellido_materno_docente AS Apellido_Materno 
FROM Docentes
UNION
SELECT nombre_docente AS Nombre,
apellido_paterno_docente AS Apellido_Paterno,
apellido_materno_docente AS Apellido_Materno 
FROM Docentes;

/*Usando UNION ALL*/
SELECT nombre_docente AS Nombre,
apellido_paterno_docente AS Apellido_Paterno,
apellido_materno_docente AS Apellido_Materno 
FROM Docentes
UNION ALL
SELECT nombre_docente AS Nombre,
apellido_paterno_docente AS Apellido_Paterno,
apellido_materno_docente AS Apellido_Materno 
FROM Docentes;

