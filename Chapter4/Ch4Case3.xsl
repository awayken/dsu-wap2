<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<xsl:for-each select="//product">
			<xsl:apply-templates select="name" />
			<xsl:apply-templates select="rating" />
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="name">
		<div class="product">
			<b>
				<xsl:value-of select="." />
			</b>
		</div>
	</xsl:template>
	<xsl:template match="rating">
		<blockquote>Average Customer Rating: <b>
				<xsl:value-of select="." />
			</b> stars. 
   <xsl:choose>
				<xsl:when test=". &gt; 3">
					<span class="over">
		<img src="images/clover.gif" align="bottom" hspace="5" /> 
		Excellent!
	   </span>
				</xsl:when>
				<xsl:when test=". &lt; 3">
					<span class="under">
            WARNING: Below target!
         </span>
					<br />
				</xsl:when>
				<xsl:otherwise>
         No change.<br />
      </xsl:otherwise>
			</xsl:choose>
   </blockquote>
		<hr size="1" width="550" align="left" color="#003366" />
	</xsl:template>
</xsl:stylesheet>
