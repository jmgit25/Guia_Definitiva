-- Guia 1 Modulo 2 
USE jarvis;

-- 1.- Analizar los datos que han podido recaudar respecto a clientes frecuentes, ventas, precios y cantidades.

CREATE TABLE CLIENTES_FRECUENTES (
     ID INT AUTO_INCREMENT AUTO_INCREMENT KEY,
     NOMBRE varchar(25),
     PAIS varchar(25),
     CATEGORIA varchar(30),
     NUM_VENTA INT);
    
SELECT * FROM  CLIENTES_FRECUENTES;

 ALTER TABLE CLIENTES_FRECUENTES
 ADD PRODUCTO_ID INT;

 ALTER TABLE CLIENTES_FRECUENTES
 ADD PRECIO INT;

 ALTER TABLE CLIENTES_FRECUENTES
 ADD CANTIDAD INT;

SELECT * FROM  CLIENTES_FRECUENTES;


SELECT * FROM  CLIENTES;

INSERT INTO CLIENTES_FRECUENTES (ID,NOMBRE,PAIS,CATEGORIA)
         SELECT *
         FROM CLIENTES;

INSERT INTO CLIENTES_FRECUENTES (ID,PRODUCTO_ID)
         SELECT *
         FROM DETALLE_COMPRA;
        
SELECT * FROM  CLIENTES_FRECUENTES;