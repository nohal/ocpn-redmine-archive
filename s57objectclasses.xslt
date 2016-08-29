<xsl:stylesheet version='2.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns='http://ienc.openecdis.org'>
	<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
	<xsl:template match="/">
		<xsl:text>"Code","ObjectClass","Acronym","Attribute_A","Attribute_B","Attribute_C","Class","Primitives"
</xsl:text>
		<xsl:for-each select="Catalogue/Features/Feature">
			<xsl:value-of select="@code"/>,"<xsl:value-of select="DataDictionaryReference/Name"/>",<xsl:value-of select="@acronym"/>,<xsl:for-each select="AttributeBinding[@usage='M']"><xsl:value-of select="@acronym"/>;</xsl:for-each>,<xsl:for-each select="AttributeBinding[@usage='O']"><xsl:value-of select="@acronym"/>;</xsl:for-each>,<xsl:for-each select="AttributeBinding[@usage='C']"><xsl:value-of select="@acronym"/>;</xsl:for-each>,<xsl:value-of select="@type"/>,<xsl:value-of select="replace(replace(replace(replace(@primitive, 'A', 'Area;'),'P','Point;'),'L','Line;'),',','')"/>
			<xsl:text>
</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
