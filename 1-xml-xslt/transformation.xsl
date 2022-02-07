<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>

    <xsl:template match="/">

        <data>
            <flat>
                <xsl:for-each select="computer/*">
                    <xsl:for-each select="./*">
                        <name>
                            <xsl:value-of select="./name"/>
                        </name>
                    </xsl:for-each>
                </xsl:for-each>
            </flat>

            <sorted>
                <xsl:for-each select="computer/*">
                    <xsl:for-each select="./*">
                        <xsl:sort select="name" order="ascending"/>
                        
                        <name>
                            <xsl:value-of select="./name"/>
                        </name>
                    </xsl:for-each>
                </xsl:for-each>
            </sorted>

            <filtered>
                <xsl:for-each select="computer/*">
                    <xsl:for-each select="./*">
                        <xsl:if test="./price &lt; 5000">
                            <name>
                                <xsl:value-of select="./name"/> - <xsl:value-of select="./price"/>
                            </name>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:for-each>
            </filtered>

            <filtered_by_char>
                <xsl:for-each select="computer/*">
                    <xsl:for-each select="./*">
                        <xsl:if test="contains(./name, 'a')">
                            <name>
                                <xsl:value-of select="./name"/>
                            </name>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:for-each>
            </filtered_by_char>
        </data>

    </xsl:template>
</xsl:stylesheet>