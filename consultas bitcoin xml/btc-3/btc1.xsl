<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
	<head>
		<meta charset="utf-8"/>
		<title>consultas xslt</title>
		<link rel="stylesheet" type="text/css" href="estilos.css"/>
	</head>

		<body>
		
		
			<h1>LIBROS PUBLICADOS ANTES DE 2020</h1>
				<table border ="2">
				<tr style="background:#887788">
					<th> NOMBRE PINTOR</th>
					<th> AÑO</th>
					<th> EDITORIAL</th>
					<th> PAGINAS</th>
				</tr>
				<xsl:for-each select="autores/autor/libros/libro">
				
					<xsl:if test="año_libr &lt;2020">
					<tr>
						<td><xsl:value-of select="nombre"/></td>
						<td><xsl:value-of select="año_libr"/></td>
						<td><xsl:value-of select="editorial"/></td>
						<td><xsl:value-of select="paginas"/></td>
					</tr>
				</xsl:if>	
				</xsl:for-each>
				</table>
		
		
		</body>
	</html>	
</xsl:template>
</xsl:stylesheet>