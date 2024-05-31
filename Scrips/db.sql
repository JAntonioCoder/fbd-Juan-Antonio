-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS tablastiendaropa;

-- Usar la base de datos
USE tablastiendaropa;

-- Creación de la tabla Cliente
CREATE TABLE IF NOT EXISTS Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    direccion VARCHAR(100),
    telefono VARCHAR(15)
);

-- Creación de la tabla Empleado
CREATE TABLE IF NOT EXISTS Empleado (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    puesto VARCHAR(50)
);

-- Creación de la tabla Categoria
CREATE TABLE IF NOT EXISTS Categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

-- Creación de la tabla Talla
CREATE TABLE IF NOT EXISTS Talla (
    id_talla INT PRIMARY KEY AUTO_INCREMENT,
    talla VARCHAR(10)
);

-- Creación de la tabla Producto
CREATE TABLE IF NOT EXISTS Producto (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10,2),
    color VARCHAR(20),
    id_categoria INT,
    id_talla INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_talla) REFERENCES Talla(id_talla)
);

-- Creación de la tabla Proveedor
CREATE TABLE IF NOT EXISTS Proveedor (
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    contacto VARCHAR(100),
    telefono VARCHAR(15),
    direccion VARCHAR(100)
);

-- Creación de la tabla Transaccion
CREATE TABLE IF NOT EXISTS Transaccion (
    id_transaccion INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    total DECIMAL(10,2),
    id_cliente INT,
    id_empleado INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);

-- Inserción de datos en la tabla Cliente
INSERT INTO Cliente (nombre, apellido, direccion, telefono) VALUES
('Juan', 'Perez', 'Calle 123', '1234567890'),
('María', 'Gómez', 'Avenida 456', '0987654321'),
('Pedro', 'Martínez', 'Carrera 789', '1112223333'),
('Laura', 'López', 'Calle Principal', '4445556666'),
('Carlos', 'González', 'Avenida Central', '7778889999'),
('Ana', 'Hernández', 'Calle 456', '3334445555'),
('José', 'Díaz', 'Avenida 789', '6667778888'),
('Sofía', 'Rodríguez', 'Calle Secundaria', '9990001111'),
('Luis', 'Sánchez', 'Avenida 123', '2223334444'),
('Elena', 'Romero', 'Carrera 345', '5556667777');

-- Inserción de datos en la tabla Empleado
INSERT INTO Empleado (nombre, apellido, puesto) VALUES
('Carlos', 'Gutiérrez', 'Vendedor'),
('Ana', 'Martínez', 'Cajero'),
('Pedro', 'Díaz', 'Gerente'),
('Laura', 'Gómez', 'Asistente'),
('Sofía', 'Pérez', 'Recepcionista'),
('Luis', 'Hernández', 'Almacenero'),
('Elena', 'López', 'Supervisor'),
('José', 'Sánchez', 'Encargado'),
('María', 'Romero', 'Asesor'),
('Juan', 'González', 'Vigilante');

-- Inserción de datos en la tabla Categoria
INSERT INTO Categoria (nombre) VALUES
('Ropa Masculina'),
('Ropa Femenina'),
('Calzado');

-- Inserción de datos en la tabla Talla
INSERT INTO Talla (talla) VALUES
('S'),
('M'),
('L'),
('XL'),
('32'),
('34'),
('36'),
('38');

-- Inserción de datos en la tabla Producto
INSERT INTO Producto (nombre, descripcion, precio, color, id_categoria, id_talla) VALUES
('Camisa Polo', 'Camisa de algodón para hombre', 29.99, 'Azul', 1, 2),
('Vestido Floral', 'Vestido de primavera para mujer', 49.99, 'Rosa', 2, 3),
('Jeans Clásicos', 'Pantalones de mezclilla para hombre', 39.99, 'Negro', 1, 5),
('Blusa Elegante', 'Blusa formal para mujer', 34.99, 'Blanco', 2, 1),
('Zapatillas Deportivas', 'Zapatillas para correr', 59.99, 'Gris', 3, 6),
('Traje de Baño', 'Traje de baño para mujer', 24.99, 'Azul', 2, 2),
('Sweater de Lana', 'Sweater cálido para invierno', 44.99, 'Gris', 1, 3),
('Camisa a Cuadros', 'Camisa informal para hombre', 27.99, 'Rojo', 1, 4),
('Falda Midi', 'Falda casual para mujer', 19.99, 'Negro', 2, 2),
('Pantalón Chino', 'Pantalones elegantes para hombre', 37.99, 'Beige', 1, 5);

-- Inserción de datos en la tabla Proveedor
INSERT INTO Proveedor (nombre, contacto, telefono, direccion) VALUES
('Proveedor A', 'Jorge García', '1234567890', 'Calle Proveedor 1'),
('Proveedor B', 'Luisa Martínez', '0987654321', 'Avenida Proveedor 2'),
('Proveedor C', 'Pedro Pérez', '1112223333', 'Carrera Proveedor 3'),
('Proveedor D', 'Ana Gómez', '4445556666', 'Avenida Proveedor 4'),
('Proveedor E', 'Juan Rodríguez', '7778889999', 'Calle Proveedor 5'),
('Proveedor F', 'María López', '3334445555', 'Avenida Proveedor 6'),
('Proveedor G', 'José Sánchez', '6667778888', 'Calle Proveedor 7'),
('Proveedor H', 'Sofía Ramírez', '9990001111', 'Avenida Proveedor 8'),
('Proveedor I', 'Laura Hernández', '2223334444', 'Carrera Proveedor 9'),
('Proveedor J', 'Carlos Díaz', '5556667777', 'Calle Proveedor 10');

-- Inserción de datos en la tabla Transaccion
INSERT INTO Transaccion (fecha, total, id_cliente, id_empleado) VALUES
('2024-04-18', 98.97, 1, 2),
('2024-04-17', 76.49, 2, 3),
('2024-04-16', 112.95, 3, 4),
('2024-04-15', 54.98, 4, 5),
('2024-04-14', 87.50, 5, 6),
('2024-04-13', 64.75, 6, 7),
('2024-04-12', 102.30, 7, 8);

-- Consultas básicas
-- 1.1. Seleccionar todos los datos de una tabla:
SELECT * FROM Cliente;

-- 1.2. Seleccionar datos específicos de una tabla:
SELECT nombre, apellido, direccion FROM Cliente;

-- 1.3. Seleccionar datos filtrados por una condición:
SELECT * FROM Empleado WHERE puesto = 'Vendedor';

-- 1.4. Ordenar resultados en orden ascendente o descendente:
SELECT * FROM Producto ORDER BY precio DESC;

-- 1.5. Contar el número de filas en una tabla:
SELECT COUNT(*) FROM Transaccion;

-- 1.6. Sumar valores de una columna:
SELECT SUM(total) FROM Transaccion;

-- 1.7. Obtener el valor máximo y mínimo de una columna:
SELECT MAX(precio), MIN(precio) FROM Producto;

-- 1.8. Unir dos tablas usando INNER JOIN:
SELECT Cliente.nombre AS cliente, Transaccion.total
FROM Cliente
INNER JOIN Transaccion ON Cliente.id_cliente = Transaccion.id_cliente;

-- Consultas intermedias
-- 2.1. Consulta con JOIN y condiciones adicionales:
SELECT e.nombre AS empleado, d.nombre AS departamento
FROM Empleado e
JOIN Transaccion t ON e.id_empleado = t.id_empleado
JOIN Cliente c ON t.id_cliente = c.id_cliente
WHERE c.nombre = 'Juan';

-- 2.2. Consulta con subconsultas correlacionadas:
SELECT e.nombre AS empleado, e.puesto, e.id_empleado
FROM Empleado e
WHERE e.id_empleado NOT IN (
    SELECT id_empleado FROM Transaccion
);

-- 2.3. Consulta con funciones de agregación y GROUP BY:
SELECT e.nombre AS empleado, COUNT(t.id_transaccion) AS transacciones
FROM Empleado e
LEFT JOIN Transaccion t ON e.id_empleado = t.id_empleado
GROUP BY e.nombre;
