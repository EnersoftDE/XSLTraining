<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="policy-example-params-and-variables.xsl"/>
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <!-- Start output for the application -->
    <xsl:template match="/policy">
        <html>
            <body>
                <xsl:call-template name="adresse">
                    <xsl:with-param name="font" select="$schriftAdressfeld"/>
                </xsl:call-template>

                <b>
                    <xsl:value-of select="./productRef/product/name"/>
                </b>
                <vertrag>
                    <xsl:attribute name="nr">
                        <xsl:value-of select="./externalIdentifier"/>
                    </xsl:attribute>
                </vertrag>

            </body>
        </html>

    </xsl:template>


    <xsl:template name="adresse">
        <xsl:param name="font"/>
        <p style="{$font}">
            <xsl:value-of select="./productRef/product/producerBusinessUnitRef/businessUnit/address/name"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="./productRef/product/producerBusinessUnitRef/businessUnit/address/surname"/>
            <br/>
            <xsl:value-of select="./productRef/product/producerBusinessUnitRef/businessUnit/address/streetName"/>
            <xsl:text> </xsl:text>
            <xsl:value-of
                    select="./productRef/product/producerBusinessUnitRef/businessUnit/address/unstructuredHouseNr"/>
            <br/>
            <xsl:value-of select="./productRef/product/producerBusinessUnitRef/businessUnit/address/postalCode"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="./productRef/product/producerBusinessUnitRef/businessUnit/address/city"/>
        </p>
        <br/>
        <br/>
    </xsl:template>

</xsl:stylesheet>