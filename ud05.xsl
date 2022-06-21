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
				<xsl:apply-templates select="">

				</xsl:apply-templates>


			</body>
		</html>
	</xsl:template>


	<!-- Completa el atributo match -->
	<xsl:template match="">
		<table>
			<thead>
				<tr>
					<th>
						<!-- Completa con la expresión que obtenga el nombre de la categoría PADRE -->
					</th>
				</tr>
			</thead>
			<tbody>
				<xsl:variable name="catID" select=""></xsl:variable>

				<!-- Completa el atributo select -->
				<xsl:for-each select="">

					<!-- Completa -->
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>
