<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<table>
		<xsl:for-each select="//product">
		<tr>	
		<td><xsl:apply-templates select="name" /></td>
		<td><xsl:apply-templates select="rating" /></td>
		</tr>
		</xsl:for-each>
		</table>
	</xsl:template>
	
	<xsl:template match="name">
		<div class="product">
			<b> <xsl:value-of select="." /> </b>
		</div>
	</xsl:template>
	
   <xsl:template match="rating">	 
   <xsl:choose>
   <xsl:when test=". = 4">
	    <span class="over">
		<img src="images/clover_green4.gif" align="bottom" hspace="5" /> 
		Excellent!
	    </span>
	</xsl:when>
	
	<xsl:when test=". = 3">
	    <span class="over">
		<img src="images/clover_blue3.gif" align="bottom" hspace="5" /> 
		Excellent!
	    </span>
	</xsl:when>
				
	<xsl:when test=". = 2">
		<span class="under">
        <img src="images/clover_red2.gif" align="bottom" hspace="5" /> WARNING: Below target!
        </span>
		 
	</xsl:when>
				
	<xsl:when test=". = 1">
		<span class="under">
        <img src="images/clover_red.gif" align="bottom" hspace="5" /> WARNING: Below target!
        </span>
		 
	</xsl:when>
				
	<xsl:otherwise>
         No change.
    </xsl:otherwise>
    
	</xsl:choose> 
	
	</xsl:template>
	
</xsl:stylesheet>
