<!-- Miles Rausch
     Exam 1 Part 2 -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
	<table>
		<xsl:for-each select="//product">
		<tr rowspan="5"><td><xsl:apply-templates select="image" /></td></tr>
		<tr><td>Product Name:</td><td><xsl:apply-templates select="name" /></td>
			<tr><td>Category:</td><td><xsl:apply-templates select="category" /></td></tr>
			<tr><td>Code:</td><td><xsl:apply-templates select="code" /></td></tr>
			<tr><td>Price:</td><td><xsl:apply-templates select="price" /></td></tr>
			<tr><td>Rating:</td><td><xsl:apply-templates select="rating" /></td></tr>
			</tr>
		</xsl:for-each>
		</table>
	</xsl:template>
	<xsl:template match="image">
	<img>
	<xsl:attribute name="src">
	images/<xsl:value-of select="." />
	</xsl:attribute>
	</img>
	</xsl:template>
	<xsl:template match="name">
		<xsl:value-of select="." />
	</xsl:template>
	<xsl:template match="category">
		<xsl:value-of select="." />
	</xsl:template>
	<xsl:template match="code">
		<xsl:value-of select="." />
	</xsl:template>
	<xsl:template match="price">
		<b>$ <xsl:value-of select="." /></b>
	</xsl:template>
	<xsl:template match="rating">
		Rating: <xsl:value-of select="." /> stars
	</xsl:template>
</xsl:stylesheet>