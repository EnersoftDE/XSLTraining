<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <!-- Start output for the application -->
    <xsl:template match="/policy">
        <xsl:param name="version" select="'v2021.03'"/>
        <produkt>
            <xsl:for-each select="subPolicyList/subPolicy">
                <xsl:if test="./productRef/product/policyDuration='3'">
                    <teilproduktMitVertragslaufzeitVon3Jahren>
                        <xsl:value-of select="./externalIdentifier" />
                    </teilproduktMitVertragslaufzeitVon3Jahren>
                </xsl:if>
            </xsl:for-each>
        </produkt>
    </xsl:template>
</xsl:stylesheet>