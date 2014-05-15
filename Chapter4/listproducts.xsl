<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<xsl:for-each select="//product">
			<xsl:apply-templates select="name" />
			<xsl:apply-templates select="category" />
			<xsl:apply-templates select="code" />
			<xsl:apply-templates select="price" />
			<xsl:apply-templates select="rating" />
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="name">
		<hr size="1" width="400" align="left" color="#003366" />
		<p><b>Product Name: <xsl:value-of select="." /></b></p>
	</xsl:template>
	<xsl:template match="category">
		<p>Category: <xsl:value-of select="." /></p>
	</xsl:template>
	<xsl:template match="code">
		<p>Product Code: (<xsl:value-of select="." />)</p>
	</xsl:template>
	<xsl:template match="price">
		<p>Price: <b>$ <xsl:value-of select="." /></b></p>
	</xsl:template>
	<xsl:template match="rating">
		<p>Rating: <xsl:value-of select="." /> stars</p>
	</xsl:template>
</xsl:stylesheet>