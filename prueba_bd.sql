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

-- 3 categorias

INSERT INTO categoria (
    id,
    nombre,
    descripcion
)
VALUES (
    1,
    'Pantalones',
    'Prenda de vestir 1'
);

INSERT INTO categoria (
    id,
    nombre,
    descripcion
)
VALUES (
    2,
    'Poleras',
    'Prenda de vestir 2'
);

INSERT INTO categoria (
    id,
    nombre,
    descripcion
)
VALUES (
    3,
    'Faldas',
    'Prenda de vestir 3'
);

-- 8 productos

INSERT INTO productos (
    id,
    nombre_producto,
    descripcion,
    valor_unitario,
    id_categoria
)
VALUES (
    1,
    'Pantalon Largo',
    'Pantalon largo, color azul',
    15000,
    1
);

INSERT INTO productos (
    id,
    nombre_producto,
    descripcion,
    valor_unitario,
    id_categoria
)
VALUES (
    2,
    'Pantalon Corto',
    'Pantalon Corto, color Café',
    10000,
    1
);

INSERT INTO productos (
    id,
    nombre_producto,
    descripcion,
    valor_unitario,
    id_categoria
)
VALUES (
    3,
    'Pantalon de Jeans',
    'Pantalon de Jeans, color negro',
    16000,
    1
);

INSERT INTO productos (
    id,
    nombre_producto,
    descripcion,
    valor_unitario,
    id_categoria
)
VALUES (
    4,
    'Polera sin cuello',
    'Polera sin cuello, color negro',
    13000,
    2
);

INSERT INTO productos (
    id,
    nombre_producto,
    descripcion,
    valor_unitario,
    id_categoria
)
VALUES (
    5,
    'Polera con cuello',
    'Polera con cuello, color verde',
    12000,
    2
);

INSERT INTO productos (
    id,
    nombre_producto,
    descripcion,
    valor_unitario,
    id_categoria
)
VALUES (
    6,
    'Polera normal',
    'Polera normal, color Azul',
    10000,
    2
);

INSERT INTO productos (
    id,
    nombre_producto,
    descripcion,
    valor_unitario,
    id_categoria
)
VALUES (
    7,
    'Falda Larga',
    'Falda Larga, color Azul',
    20000,
    3
);

INSERT INTO productos (
    id,
    nombre_producto,
    descripcion,
    valor_unitario,
    id_categoria
)
VALUES (
    8,
    'Falda Corta',
    'Falda Corta, color blanco',
    18000,
    3
);

-- 10 facturas
-- 2 para el cliente 1, con 2 y 3 productos

INSERT INTO facturas (
    n_factura,
    fecha_factura,
    subtotal,
    iva,
    total,
    id_cliente
)
VALUES (
    1,
    '18-10-2020',
    36000,
    6840,
    42840,
    1
);

INSERT INTO facturas (
    n_factura,
    fecha_factura,
    subtotal,
    iva,
    total,
    id_cliente
)
VALUES (
    2,
    '18-10-2020',
    54000,
    10260,
    64260,
    1
);

INSERT INTO listado_productos (

    id_listado,
    n_factura,
    id_producto,
    precio_unitario,
    cantidad,
    total
)
VALUES (
    1,
    1,
    8,
    18000,
    2,
    36000
);

INSERT INTO listado_productos (
    id_listado,
    n_factura,
    id_producto,
    precio_unitario,
    cantidad,
    total
)
VALUES (
    2,
    1,
    8,
    18000,
    3,
    54000
);

-- 3 para el cliente 2, con 3, 2 y 3 productos

INSERT INTO facturas (
    n_factura,
    fecha_factura,
    subtotal,
    iva,
    total,
    id_cliente
)
VALUES (
    3,
    '17-10-2020',
    48000,
    9120,
    57120,
    2
);

INSERT INTO facturas (
    n_factura,
    fecha_factura,
    subtotal,
    iva,
    total,
    id_cliente
)
VALUES (
    4,
    '17-10-2020',
    20000,
    3800,
    23800,
    2
);

INSERT INTO facturas (
    n_factura,
    fecha_factura,
    subtotal,
    iva,
    total,
    id_cliente
)
VALUES (
    5,
    '16-10-2020',
    30000,
    5700,
    35700,
    2
);

INSERT INTO listado_productos (
    id_listado,
    n_factura,
    id_producto,
    precio_unitario,
    cantidad,
    total
)
VALUES (
    3,
    3,
    3,
    16000,
    3,
    48000
);

INSERT INTO listado_productos (
    id_listado,
    n_factura,
    id_producto,
    precio_unitario,
    cantidad,
    total
)
VALUES (
    4,
    4,
    2,
    10000,
    2,
    20000
);

INSERT INTO listado_productos (
    id_listado,
    n_factura,
    id_producto,
    precio_unitario,
    cantidad,
    total
)
VALUES (
    5,
    5,
    2,
    10000,
    3,
    30000
);

-- 1 para el cliente 3, con 1 producto

INSERT INTO facturas (
    n_factura,
    fecha_factura,
    subtotal,
    iva,
    total,
    id_cliente
)
VALUES (
    6,
    '19-10-2020',
    10000,
    1900,
    11900,
    3
);

INSERT INTO listado_productos (
    id_listado,
    n_factura,
    id_producto,
    precio_unitario,
    cantidad,
    total
)
VALUES (
    6,
    6,
    2,
    10000,
    1,
    10000
);

-- 4 para el cliente 4, con 2, 3, 4 y 1 producto

INSERT INTO facturas (
    n_factura,
    fecha_factura,
    subtotal,
    iva,
    total,
    id_cliente
)
VALUES (
    7,
    '19-10-2020',
    20000,
    3800,
    23800,
    4
);
INSERT INTO facturas (
    n_factura,
    fecha_factura,
    subtotal,
    iva,
    total,
    id_cliente
)
VALUES (
    8,
    '20-10-2020',
    30000,
    5700,
    35700,
    4
);
INSERT INTO facturas (
    n_factura,
    fecha_factura,
    subtotal,
    iva,
    total,
    id_cliente
)
VALUES (
    9,
    '19-10-2020',
    40000,
    7600,
    47600,
    4
);
INSERT INTO facturas (
    n_factura,
    fecha_factura,
    subtotal,
    iva,
    total,
    id_cliente
)
VALUES (
    10,
    '19-10-2020',
    10000,
    1900,
    11900,
    4
);

INSERT INTO listado_productos (
    id_listado,
    n_factura,
    id_producto,
    precio_unitario,
    cantidad,
    total
)
VALUES (
    7,
    7,
    6,
    10000,
    2,
    20000
);

INSERT INTO listado_productos (
    id_listado,
    n_factura,
    id_producto,
    precio_unitario,
    cantidad,
    total
)
VALUES (
    8,
    8,
    6,
    10000,
    3,
    30000
);

INSERT INTO listado_productos (
    id_listado,
    n_factura,
    id_producto,
    precio_unitario,
    cantidad,
    total
)
VALUES (
    9,
    9,
    6,
    10000,
    2,
    20000
);

INSERT INTO listado_productos (
    id_listado,
    n_factura,
    id_producto,
    precio_unitario,
    cantidad,
    total
)
VALUES (
    10,
    9,
    2,
    10000,
    2,
    20000
);

INSERT INTO listado_productos (
    id_listado,
    n_factura,
    id_producto,
    precio_unitario,
    cantidad,
    total
)
VALUES (
    11,
    10,
    2,
    10000,
    1,
    10000
);

-- Queries
-- ¿Que cliente realizó la compra más cara?

SELECT facturas.n_factura, facturas.total, facturas.id_cliente, clientes.nombre  
FROM facturas   
INNER JOIN clientes   
ON facturas.id_cliente = clientes.id 
ORDER BY facturas.total DESC
LIMIT 1;

--¿Que cliente pagó sobre 100 de monto? cambié el monto  de 100 a 60.000 ya que coloque valores mayores, espero se entienda

SELECT facturas.n_factura, facturas.total, facturas.id_cliente, clientes.nombre  
FROM facturas   
INNER JOIN clientes   
ON facturas.id_cliente = clientes.id 
WHERE facturas.total > 60000
LIMIT 1;

-- ¿Cuantos clientes han comprado el producto 6. 

SELECT listado_productos.id_producto, listado_productos.n_factura, clientes.nombre   
FROM listado_productos   
INNER JOIN facturas   
ON listado_productos.n_factura = facturas.n_factura AND listado_productos.id_producto  = 6 
INNER JOIN clientes
ON clientes.id = facturas.id_cliente;


-- Todo Funciona probado en terminal...