<xsl:stylesheet version='2.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns='http://ienc.openecdis.org'>
	<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
	<xsl:template match="/">
	<xsl:text>"Attribute","ValueDecode"
</xsl:text>
		<xsl:for-each select="Catalogue/Attributes/Attribute[@valueType='L' or @valueType='E']">
			<xsl:value-of select="@acronym"/>,<xsl:for-each select="Enumeration"><xsl:value-of select="@value"/>;<xsl:value-of select="replace(replace(DataDictionaryReference/Name,',', '.'),';','.')"/>;</xsl:for-each>
			<xsl:text>
</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
