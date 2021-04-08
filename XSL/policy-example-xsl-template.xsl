<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <!-- Start output for the application -->
    <xsl:template match="/policy">

        <vertrag></vertrag>

        <!--
        <vertrag nr="<xsl:value-of select='./externalIdentifier'/>" >
        </vertrag>
        -->

        <!--
        <vertrag nr="{./externalIdentifier}">
        </vertrag>
        -->
        <!--
        <vertrag>
            <xsl:attribute name="nr">
                <xsl:value-of select="./externalIdentifier" />
            </xsl:attribute>
        </vertrag>
        -->

        <!--
        <vertrag>
            <xsl:attribute name="nr">
                <xsl:value-of select="./externalIdentifier" />
            </xsl:attribute>
            <produkt>
                <xsl:value-of select="./productRef/product/name"/>
            </produkt>
        </vertrag>
        -->


    </xsl:template>
</xsl:stylesheet>