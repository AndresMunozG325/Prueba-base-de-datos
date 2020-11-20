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

-- CARGANDO DATOS
-- 5 clientes

INSERT INTO clientes (
    id,
    nombre,
    rut,
    direccion
)
VALUES (
    1,
    'Claudia',
    '11111111-1',
    'pasaje 1, santiago'
);

INSERT INTO clientes (
    id,
    nombre,
    rut,
    direccion
)
VALUES (
    2,
    'Fernanda',
    '22222222-2',
    'pasaje 2, santiago'
);

INSERT INTO clientes (
    id,
    nombre,
    rut,
    direccion
)
VALUES (
    3,
    'Florencia',
    '33333333-3',
    'pasaje 3, santiago'
);

INSERT INTO clientes (
    id,
    nombre,
    rut,
    direccion
)
VALUES (
    4,
    'Andrés',
    '44444444-4',
    'pasaje 4, santiago'
);

INSERT INTO clientes (
    id,
    nombre,
    rut,
    direccion
)
VALUES (
    5,
    'Pepa',
    '55555555-5',
    'pasaje 5, santiago'
);
