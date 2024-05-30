-- Active: 1715625764033@@127.0.0.1@3306@tablastiendaropa

-- Creación de la tabla Cliente
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

-- Creación de la tabla Producto
CREATE TABLE IF NOT EXISTS Producto (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10,2),
    talla VARCHAR(10),
    color VARCHAR(20),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
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

-- Inserción de datos en la tabla Producto
INSERT INTO Producto (nombre, descripcion, precio, talla, color, id_categoria) VALUES
('Camisa Polo', 'Camisa de algodón para hombre', 29.99, 'M', 'Azul', 1),
('Vestido Floral', 'Vestido de primavera para mujer', 49.99, 'L', 'Rosa', 2),
('Jeans Clásicos', 'Pantalones de mezclilla para hombre', 39.99, '32', 'Negro', 1),
('Blusa Elegante', 'Blusa formal para mujer', 34.99, 'S', 'Blanco', 2),
('Zapatillas Deportivas', 'Zapatillas para correr', 59.99, '8', 'Gris', 3),
('Traje de Baño', 'Traje de baño para mujer', 24.99, 'M', 'Azul', 2),
('Sweater de Lana', 'Sweater cálido para invierno', 44.99, 'L', 'Gris', 1),
('Camisa a Cuadros', 'Camisa informal para hombre', 27.99, 'XL', 'Rojo', 1),
('Falda Midi', 'Falda casual para mujer', 19.99, 'M', 'Negro', 2),
('Pantalón Chino', 'Pantalones elegantes para hombre', 37.99, '34', 'Beige', 1);

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

-- Consultas
-- Seleccionar todos los clientes
SELECT id_cliente, nombre, apellido, direccion, telefono FROM Cliente;

-- Seleccionar todos los empleados
SELECT id_empleado, nombre, apellido, puesto FROM Empleado;

-- Seleccionar todos los productos
SELECT id_producto, nombre, descripcion, precio, talla, color FROM Producto;

-- Seleccionar todas las transacciones
SELECT id_transaccion, fecha, total, id_cliente, id_empleado FROM Transaccion;

-- Ordenar productos por precio ascendente
SELECT * FROM Producto ORDER BY precio ASC;

-- Ordenar clientes por nombre descendente
SELECT * FROM Cliente ORDER BY nombre DESC;

-- Contar el número de registros en cada tabla
SELECT COUNT(*) FROM Cliente;
SELECT COUNT(*) FROM Empleado;
SELECT COUNT(*) FROM Producto;
SELECT COUNT(*) FROM Proveedor;
SELECT COUNT(*) FROM Categoria;
SELECT COUNT(*) FROM Transaccion;

-- Sumar el precio de todos los productos
SELECT SUM(precio) FROM Producto;

-- Encontrar el máximo y mínimo precio de los productos
SELECT MAX(precio), MIN(precio) FROM Producto;

-- Unir Cliente y Transaccion para obtener el nombre del cliente y el total de la transacción
SELECT Cliente.nombre, Transaccion.total 
FROM Cliente
INNER JOIN Transaccion ON Cliente.id_cliente = Transaccion.id_cliente;

-- Unir Empleado y Transaccion para obtener el nombre del empleado y la fecha de la transacción
SELECT Empleado.nombre, Transaccion.fecha 
FROM Empleado
INNER JOIN Transaccion ON Empleado.id_empleado = Transaccion.id_empleado;

-- Seleccionar productos que cuestan más de 50.00
SELECT * FROM Producto
WHERE precio > 50.00;

-- Unir Clientes y Empleados, y diferenciar el tipo de entidad
SELECT nombre, 'Cliente' AS Tipo
FROM Cliente
UNION
SELECT nombre, 'Empleado' AS Tipo
FROM Empleado;

-- Seleccionar transacciones entre dos fechas específicas
SELECT * FROM Transaccion
WHERE fecha BETWEEN '2024-01-01' AND '2024-12-31';

-- Seleccionar clientes que tienen una edad mayor al promedio
SELECT nombre
FROM Cliente
WHERE id_cliente > (SELECT AVG(id_cliente) FROM Cliente);

-- Empleados que no tienen transacciones asociadas
SELECT nombre
FROM Empleado e
WHERE NOT EXISTS (
    SELECT 1 FROM Transaccion t WHERE t.id_empleado = e.id_empleado
);

-- Seleccionar clientes con paginación
SELECT * 
FROM Cliente
ORDER BY nombre DESC
LIMIT 10 OFFSET 10;
