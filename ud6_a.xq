(: apartado UD6 a) :)
for $p in doc("hipermercado.xml")/hipermercado/productos/producto
where $p/precio>=50 and $p/precio<=100
order by $p/nombre
return $p/nombre/text()
