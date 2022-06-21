-- UD06 b)


SELECT TOP (10) --Se seleccionan los primeros 10 registros
  -- COMPLETA

  CustomerID, EmailAddress
  FROM [AdventureWorksLT2016].[SalesLT].[Customer]
  ORDER BY EmailAddress
  FOR XML PATH('cliente'), ROOT ('clientes')
  
  
 