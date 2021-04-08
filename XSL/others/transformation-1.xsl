<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Ergebnisdokument</title>
            </head>
            <body>
                <h1 align="center">Die zweite XSLT-Transformation</h1>
                <p align="center"><xsl:value-of select="wurzelelement"/></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>