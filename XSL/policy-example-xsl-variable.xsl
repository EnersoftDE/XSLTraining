<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="policy-example-params-and-variables.xsl"/>
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <!-- Start output for the application -->
    <xsl:template match="/policy">
        <xsl:param name="version" select="'v2021.03'"/>

        <vertrag>
            <xsl:attribute name="nr">
                <xsl:value-of select="./externalIdentifier" />
            </xsl:attribute>
            <xsl:attribute name="v">
                <xsl:value-of select="$version" />
            </xsl:attribute>
            <xsl:attribute name="source">
                <xsl:value-of select="$source" />
            </xsl:attribute>
        </vertrag>

    </xsl:template>
</xsl:stylesheet>