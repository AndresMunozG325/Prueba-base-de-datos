-- Prueba base de datos 
-- Creación de Base de datos

CREATE DATABASE prueba;

-- Creación de Tablas

CREATE TABLE clientes(
    id INT,
    nombre VARCHAR(255),
    rut VARCHAR(255),
    direccion VARCHAR,
    PRIMARY KEY (id)
);

CREATE TABLE facturas(
    n_factura INT,
    fecha_factura VARCHAR(255),
    subtotal INT,
    iva INT,
    total INT,
    id_cliente INT,
    PRIMARY KEY (n_factura),
    FOREIGN KEY(id_cliente) REFERENCES clientes(id)
);

CREATE TABLE categoria(
    id INT,
    nombre VARCHAR(255),
    descripcion VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE productos(
    id INT,
    nombre_producto VARCHAR(255),
    descripcion VARCHAR(255),
    valor_unitario INT,
    id_categoria INT,
    PRIMARY KEY (id),
    FOREIGN KEY(id_categoria) REFERENCES categoria(id)
);

CREATE TABLE listado_productos(
    id_listado INT,
    n_factura INT,
    id_producto INT,
    precio_unitario INT,
    cantidad INT,
    total INT,
    PRIMARY KEY (id_listado),
    FOREIGN KEY(n_factura) REFERENCES facturas(n_factura),
    FOREIGN KEY(id_producto) REFERENCES productos(id)
);