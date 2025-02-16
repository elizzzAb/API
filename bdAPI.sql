CREATE DATABASE API;

CREATE TABLE Producto (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- Clave primaria autoincremental
    Nombre VARCHAR(100) NOT NULL,    -- Nombre obligatorio, máximo 100 caracteres
    Precio DECIMAL(18,2) NOT NULL CHECK (Precio > 0), -- Precio obligatorio, mayor a 0
    Stock INT NOT NULL CHECK (Stock >= 0)             -- Stock obligatorio, mínimo 0
);
GO

--INSERT INTO Producto (Nombre, Precio, Stock)
--VALUES 
--    ('Teclado', 50.00, 100),
--    ('Mouse', 25.50, 150),
--    ('Monitor', 300.00, 30),
--    ('Impresora', 200.75, 20),
--    ('Router', 80.00, 50),
--    ('Cámara Web', 45.25, 75),
--    ('Auriculares', 60.00, 120),
--    ('Disco Duro Externo', 120.00, 40),
--    ('Memoria USB', 15.00, 200),
--    ('Altavoces', 70.00, 60);
--GO

SELECT * FROM Producto;
