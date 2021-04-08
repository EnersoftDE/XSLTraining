<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <!-- Start output for the application -->
    <xsl:template match="/policy">
        <xsl:param name="version" select="'v2021.03'"/>
        <produkt>
            <xsl:for-each select="subPolicyList/subPolicy/productRef/product">
                <xsl:choose>
                    <xsl:when test="policyDuration='3'">
                        <teilproduktMitVertragslaufzeitVon3Jahren>
                            <xsl:value-of select="../../externalIdentifier"/>
                        </teilproduktMitVertragslaufzeitVon3Jahren>
                    </xsl:when>

                    <xsl:when test="policyDuration='5'">
                        <teilproduktMitVertragslaufzeitVon5Jahren>
                            <xsl:value-of select="../../externalIdentifier"/>
                        </teilproduktMitVertragslaufzeitVon5Jahren>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </produkt>
    </xsl:template>
</xsl:stylesheet>