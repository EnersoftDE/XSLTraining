<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <!-- Start output for the application -->
    <xsl:template match="/policy">

        <vertrag>
            <xsl:attribute name="nr">
                <xsl:value-of select="./externalIdentifier" />
            </xsl:attribute>
        </vertrag>

       <ansprechpartner>
           <xsl:value-of select="./productRef/product/producerBusinessUnitRef/businessUnit/address/name"/>
           <xsl:text> </xsl:text>
           <xsl:value-of select="./productRef/product/producerBusinessUnitRef/businessUnit/address/surname"/>
       </ansprechpartner>
    </xsl:template>
</xsl:stylesheet>