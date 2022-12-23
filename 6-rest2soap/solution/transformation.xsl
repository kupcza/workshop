<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>

    <xsl:template match="/">

        <xsl:variable name="brand_temp">
            <xsl:value-of select="/root/body/RequestData/filter/brand"/>
        </xsl:variable>

        <xsl:variable name="brand">
            <xsl:choose>
                <xsl:when test="$brand_temp = 1 or $brand_temp = 2 or $brand_temp = 3">
                    <xsl:value-of select="$brand_temp"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:soap="http://www.jpower8.com/newDeveloper/soap">
            <soapenv:Header/>
            <soapenv:Body>
                <soap:PointsOfInterestsRes>
                    <soap:requestID>
                        <xsl:value-of select="/root/headers/X-Request-Id"/>
                    </soap:requestID>
                    <soap:places>
                        <!--Zero or more repetitions:-->
                        <xsl:for-each select="/root/data/item">
                            <soap:item>
                                <soap:timestamp>
                                    <xsl:value-of select="/root/headers/X-Execution-Timestamp"/>
                                </soap:timestamp>
                                <soap:id>
                                    <xsl:value-of select="position()"/>
                                </soap:id>
                                <soap:name>
                                    <xsl:value-of select="./name"/>
                                </soap:name>
                                <soap:address>
                                    <soap:street>
                                        <xsl:value-of select="./address/street"/>
                                    </soap:street>
                                    <soap:houseNo>
                                        <xsl:value-of select="./address/houseNo"/>
                                    </soap:houseNo>
                                    <soap:town>
                                        <xsl:value-of select="./address/town"/>
                                    </soap:town>
                                    <soap:postal>
                                        <xsl:value-of select="./address/postal"/>
                                    </soap:postal>
                                    <soap:country>
                                        <xsl:value-of select="./address/country"/>
                                    </soap:country>
                                </soap:address>
                                <soap:type>
                                    <xsl:value-of select="/root/body/RequestData/filter/type"/>
                                </soap:type>
                                <soap:url>https://www.jpower8.cz</soap:url>
                                <soap:hours>
                                    <!--1 to 7 repetitions:-->
                                    <soap:hour>
                                        <soap:day>Day</soap:day>
                                        <soap:from>08:00</soap:from>
                                        <soap:to>16:00</soap:to>
                                    </soap:hour>

                                </soap:hours>
                            </soap:item>
                        </xsl:for-each>

                    </soap:places>

                    <soap:filter>
                        <soap:type>
                            <xsl:value-of select="/root/body/RequestData/filter/type"/>
                        </soap:type>
                        <soap:pageLimit>
                            <xsl:value-of select="/root/body/RequestData/filter/limit"/>
                        </soap:pageLimit>
                        <soap:brand>
                            <xsl:value-of select="$brand"/>
                        </soap:brand>
                        <soap:brandName>
                            <xsl:choose>
                                <xsl:when test="$brand = 1">ČSOB</xsl:when>
                                <xsl:when test="$brand = 2">ČSOB SK</xsl:when>
                                <xsl:when test="$brand = 3">Česká pošta</xsl:when>
                                <xsl:otherwise>unknown</xsl:otherwise>
                            </xsl:choose>
                        </soap:brandName>
                    </soap:filter>
                </soap:PointsOfInterestsRes>
            </soapenv:Body>
        </soapenv:Envelope>

    </xsl:template>
</xsl:stylesheet>
