<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>

    <xsl:template match="/">

        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:soap="http://www.jpower8.com/newDeveloper/soap">
            <soapenv:Header/>
            <soapenv:Body>
                <soap:PointsOfInterestsRes>
                    <soap:requestID>?</soap:requestID>
                    <soap:places>
                        <!--Zero or more repetitions:-->
                        <soap:item>
                            <soap:timestamp>?</soap:timestamp>
                            <soap:id>?</soap:id>
                            <soap:name>?</soap:name>
                            <soap:address>
                                <soap:street>?</soap:street>
                                <soap:houseNo>?</soap:houseNo>
                                <soap:town>?</soap:town>
                                <soap:postal>?</soap:postal>
                                <soap:country>?</soap:country>
                            </soap:address>
                            <soap:type>?</soap:type>
                            <soap:url>?</soap:url>
                            <soap:hours>
                                <!--1 to 7 repetitions:-->
                                <soap:hour>
                                    <soap:day>?</soap:day>
                                    <soap:from>?</soap:from>
                                    <soap:to>?</soap:to>
                                </soap:hour>
                            </soap:hours>
                        </soap:item>
                    </soap:places>
                    <soap:filter>
                        <soap:type>?</soap:type>
                        <soap:pageLimit>?</soap:pageLimit>
                        <soap:brand>?</soap:brand>
                        <soap:brandName>?</soap:brandName>
                    </soap:filter>
                </soap:PointsOfInterestsRes>
            </soapenv:Body>
        </soapenv:Envelope>

    </xsl:template>
</xsl:stylesheet>
