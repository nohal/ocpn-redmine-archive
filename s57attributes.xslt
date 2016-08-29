<xsl:stylesheet version='2.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns='http://ienc.openecdis.org'>
	<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
	<xsl:template match="/">
	<xsl:text>"Code","Attribute","Acronym","Attributetype","Class"
</xsl:text>
		<xsl:for-each select="Catalogue/Attributes/Attribute">
			<xsl:value-of select="@code"/>,<xsl:value-of select="replace(DataDictionaryReference/Name, ',','.')"/>,<xsl:value-of select="@acronym"/>,<xsl:value-of select="@valueType"/>,<xsl:value-of select="@useType"/>
			<xsl:text>
</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
