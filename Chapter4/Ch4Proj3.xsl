<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
	<xsl:for-each select="//Category">
		   <xsl:text disable-output-escaping="yes">&lt;a HREF="Ch4Proj3.aspx</xsl:text>
		   <xsl:text disable-output-escaping="yes">?ImageUrl=</xsl:text>
		   <xsl:value-of select="ImageUrl" />
		   <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
		   <xsl:value-of select="CategoryName" />
		   <xsl:text disable-output-escaping="yes">&lt;/A&gt;</xsl:text> 
		   <br />
		</xsl:for-each>
	</xsl:template>  
</xsl:stylesheet>
