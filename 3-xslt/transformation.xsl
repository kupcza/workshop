<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>

    <xsl:template match="/">

        <!-- remove me later -->
        <root>
            <petName>
                <xsl:value-of select="/pets/Pet[1]/name"/>
            </petName>
        </root>
        <!-- remove me later -->

    </xsl:template>
</xsl:stylesheet>
