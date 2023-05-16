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
		
		<h1>Ray Dalio</h1>
				<table border ="2">
				<tr style="background:#887788">
					<th> NOMBRE AUTOR</th>
					<th> CATEGORIA</th>
					<th> OBRAS</th>
					
				</tr>
				<xsl:for-each select="autores/autor[nombre='Ray Dalio']">
					<tr>
						<td><xsl:value-of select="nombre"/></td>
						<td><xsl:value-of select="categoria"/></td>
						
						<td>
							<xsl:for-each select="libros/libro">
								<xsl:sort select="."  order="descending"/>
									
									<xsl:value-of select="nombre"/><br/>
								
							</xsl:for-each>
						</td>
					</tr>
				</xsl:for-each>
				</table>
			
		
		
		</body>
	</html>	
</xsl:template>
</xsl:stylesheet>