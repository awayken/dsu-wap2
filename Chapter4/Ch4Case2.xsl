<!-- Miles Rausch
     Web Application Programming II
     Ch4Case2.xsl -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<xsl:for-each select="//Products">
		    <xsl:apply-templates select="Thumbnail" />
			<xsl:apply-templates select="ModelName" />
			<xsl:apply-templates select="SubCatID" />
			<xsl:apply-templates select="ProductID" />
			<xsl:apply-templates select="UnitCost" />
			<xsl:apply-templates select="ProductImage" />
		</xsl:for-each>
	</xsl:template>
<!--<div class="lefty">-->
	<xsl:template match="Thumbnail">
	       <!-- <img src="<xsl:value-of select="." />" /> -->
	</xsl:template>
<!--</div>-->
<!--<div class="righty">-->
	<xsl:template match="ModelName">
		<p><b><xsl:value-of select="." /></b></p>
	</xsl:template>

	<xsl:template match="SubCatID">
		ID (<xsl:value-of select="." /> -
	</xsl:template>
	<xsl:template match="ProductID">
		 <xsl:value-of select="." />)
	</xsl:template>

	<xsl:template match="UnitCost">
		<p>Price: $ <xsl:value-of select="." /></p>
	</xsl:template>
	<xsl:template match="ProductImage">
		<!-- <p><a href="<xsl:value-of select="." />" title="Product Image">Product Image</a></p> -->
	</xsl:template>
<!--</div>-->
</xsl:stylesheet>