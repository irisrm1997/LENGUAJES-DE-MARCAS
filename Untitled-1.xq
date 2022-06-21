<ul>
{
for $x in doc("libros.xml")/biblioteca/libros/libro
where $x/editorial = "O'Reilly"
order by $x/titulo
return <li>{data($x/titulo)}</li>
}
</ul>


<ul>
  <li>Learning XML</li>
  <li>XML Imprescindible</li>
  <li>XML Schema</li>
  <li>XQuery</li>
</ul>
