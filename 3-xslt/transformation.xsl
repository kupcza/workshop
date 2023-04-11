<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>

    <xsl:template match="/">

        <!-- remove me later -->
        <!--root>
            <petName>
                <xsl:value-of select="/pets/Pet[1]/name"/>
            </petName>
        </root-->
        <!-- remove me later -->
        
        <zoo>
            <animals>
                <xsl:for-each select="/pets/Pet[position() &lt; 11]">
                    <animal>
                        <name>
                            <xsl:value-of select="./name"/>
                        </name>
                    </animal>
                </xsl:for-each>
            </animals>

            <doesntHaveCategory>
                <xsl:for-each select="/pets/Pet[not(./category)]">
                    <animal>
                        <idName>
                            <xsl:value-of select="concat('#', id, ' - ', name)"/>
                        </idName>
                    </animal>
                </xsl:for-each>
            </doesntHaveCategory>

            <notAvailable>
                <xsl:for-each select="/pets/Pet[./status!='available']">
                    <animal>
                        <id>
                            <xsl:value-of select="./id"/>
                        </id>
                        <name>
                            <xsl:value-of select="./name"/>
                        </name>
                        <xsl:if test="./photoUrls/photoUrl">
                            <photoUrls>
                                <xsl:for-each select="./photoUrls/photoUrl">
                                    <url>
                                        <xsl:value-of select="."/>
                                    </url>
                                </xsl:for-each>
                            </photoUrls>
                        </xsl:if>

                    </animal>
                </xsl:for-each>
            </notAvailable>

            <customCategory>
                <xsl:for-each select="/pets/Pet[./category/name!='string']">
                    <animal><xsl:copy-of select="./*"/></animal>
                </xsl:for-each>

            </customCategory>
        </zoo>

    </xsl:template>
</xsl:stylesheet>
