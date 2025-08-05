CREATE TABLE fabricante (
  -- Nota del profesor: No olvides colocar PRIMARY KEY para identificar la llave primaria
  -- Nota del profesor: Tampoco olvides colocar las restricciones si son necesarias. 
  id_fabricante INT UNSIGNED UNIQUE NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
  -- Nota del profesor: No olvides colocar PRIMARY KEY para identificar la llave primaria
  id_producto INT UNSIGNED UNIQUE NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  precio DOUBLE NOT NULL,
  
  -- Codigo_fabricante es el campo que va a contener   la llave fornea
  -- Normalmente la llave foranea no es unica
  codigo_fabricante INT UNSIGNED NOT NULL,
  -- Aqui estoy diciendo que dicho campo creado sera la llave foranea
  FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(id_fabricante)
);

-- Inserción de registros a la tabla fabricantes
INSERT INTO fabricante(nombre) VALUES("Asus");
INSERT INTO fabricante(nombre) VALUES("Lenovo");
INSERT INTO fabricante(nombre) VALUES("Hewlett - Packard");
INSERT INTO fabricante(nombre) VALUES("Samsung");
INSERT INTO fabricante(nombre) VALUES("Seagate");
INSERT INTO fabricante(nombre) VALUEs("Crucial");
INSERT INTO fabricante(nombre) VALUEs("Gigabyte");
INSERT INTO fabricante(nombre) VALUEs("Huawei");
INSERT INTO fabricante(nombre) VALUEs("Xiaomi");

-- Inserción de registros a la tabla producto
INSERT INTO producto(nombre, precio, codigo_fabricante) VALUES('Disco Duro SATA3 1TB', 86.99, 5); --Ejemplo

--------------------
-- No olvides borrar mis comentarios, solo deja los que explican el código