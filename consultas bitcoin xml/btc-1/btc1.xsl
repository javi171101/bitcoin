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
		
		
			<h1 >Autores</h1>
			<table border ="2">
			<tr style="background:#887788">
				<th> Autor</th>
				<th> Codigo de autor</th>
			</tr>
			<xsl:for-each select="autores/autor">
				<tr>
					<td><xsl:value-of select="nombre"/></td>
					<td><xsl:value-of select="codigo_autor"/></td>
				</tr>
			</xsl:for-each>
			</table>
		
		
		</body>
	</html>	
</xsl:template>
</xsl:stylesheet>