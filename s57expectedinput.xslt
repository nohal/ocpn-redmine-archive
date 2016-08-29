<xsl:stylesheet version='2.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns='http://ienc.openecdis.org'>
	<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
	<xsl:template match="/">
	<xsl:text>"Code","ID","Meaning"
</xsl:text>
		<xsl:for-each select="Catalogue/Attributes/Attribute[@valueType='L' or @valueType='E']">
			<xsl:variable name="code" select="@code"/><xsl:for-each select="Enumeration"><xsl:value-of select="$code" />,<xsl:value-of select="@value"/>,"<xsl:value-of select="DataDictionaryReference/Name"/>"<xsl:text>
</xsl:text>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
