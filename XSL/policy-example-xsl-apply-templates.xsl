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

        <!--
        Wird xsl:apply-templates ohne select-Attribut verwendet,
        so wird in Dokumentreihenfolge eine Nodesequenz aller
        Kindknoten des aktuellen Knotens zusammengestellt,
        also Textknoten (auch reine Whitespace-Nodes!) sowie
        Element-, Kommentar und PI-Knoten.
        -->
        <!--
        <xsl:apply-templates/>
        -->

        <!--
        <xsl:apply-templates select="./productRef/product/name" />
        -->

        <xsl:apply-templates select="./productRef/product/name" mode="showAsSubjectLine"/>

    </xsl:template>


    <xsl:template match="name">
        <produkt>
            <xsl:value-of select="."/>
        </produkt>
    </xsl:template>

    <xsl:template match="name" mode="showAsSubjectLine">
        <titel>
            <xsl:value-of select="."/>
        </titel>
    </xsl:template>
</xsl:stylesheet>