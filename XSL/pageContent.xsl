<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:template name="generateContent">
        <fo:block>
            <fo:inline font-weight="bold">
            CONTENT
            </fo:inline>
        </fo:block>
        <fo:block>
            Hier steht eine neue Zeile
        </fo:block>
        <fo:block>
            <xsl:value-of select="/policy/productRef/product/name"/>
        </fo:block>
    </xsl:template>

</xsl:stylesheet>