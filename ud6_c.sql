--UD6 apartados c)
-- Guarda el archivo hipermercado.xml en la máquina virtual en una ruta fácilmente accesible y completa el script ud6_c.sql
-- para que a partir del archivo hipermercado.xml inserte datos en la tabla Producto de la base de datos con la siguiente correspondencia:
DECLARE @documentoXML xml
SELECT @documentoXML = aliasColumna
--ACTUALIZA LA RUTA AL FICHERO SEGÚN DONDE HAYAS GUARDADO EL FICHERO hipermercado.xml


FROM OPENROWSET (BULK 'C:\Users\wadmin\Desktop\Examen\hipermercado.xml', SINGLE_BLOB)
AS aliasTabla (aliasColumna)
SELECT @documentoXML
DECLARE @hdoc int
EXEC sp_xml_preparedocument @hdoc OUTPUT, @documentoXML

INSERT INTO [dbo].[Producto](Name, ListPrice, ProductCategoryID,

--COMPLETA





















EXEC sp_xml_removedocument @hdoc

--Para comprobar si se han insertado registros:
SELECT * FROM Producto order by ProductCategoryID

