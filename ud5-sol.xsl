<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<!-- Documento de salida con html -->
	<xsl:output method="html" encoding="utf-8" indent="yes" />
	<xsl:template match="/">
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
		<html>
			<head>
				<link href="estilos.css" rel="stylesheet" />

				<title>Prueba UD05</title>
			</head>
			<body>
				<h1>Hipermercado </h1><!-- Tabla global -->
				<h2>Secciones</h2>

				<!-- Completa el atributo select -->
					<xsl:apply-templates
					select="/hipermercado/categorias/categoria[not(@padreCategoriaID)]">
					<xsl:sort select="nombre"></xsl:sort>
				</xsl:apply-templates>

			</body>
		</html>
	</xsl:template>


	<!-- Completa el atributo match -->
	<xsl:template match="categoria[not(@padreCategoriaID)]">
		<table>
			<thead>
				<tr>
					<th class="categoria_padre">
						<xsl:value-of select="nombre"></xsl:value-of>
					</th>
				</tr>
			</thead>
			<tbody>
				<xsl:variable name="catID" select="categoriaID"></xsl:variable>
				<xsl:for-each
					select="/hipermercado/categorias/categoria[@padreCategoriaID]">
					<xsl:sort select="nombre"></xsl:sort>

					<xsl:if test="@padreCategoriaID = $catID">
						<tr>
							<td>
								
								<xsl:variable name="prodCatID" select="categoriaID"></xsl:variable>
								
								<xsl:variable name="num_prods"
									select="count(/hipermercado/productos/producto[categoria = $prodCatID])"></xsl:variable>
									
									<xsl:value-of select="concat(nombre, ' (', $num_prods ,')')"></xsl:value-of>
							</td>
						</tr>
					</xsl:if>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>
