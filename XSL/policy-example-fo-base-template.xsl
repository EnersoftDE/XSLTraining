<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:import href="./pageLayout.xsl"/>
    <xsl:import href="pageContent.xsl"/>

    <!-- Start output for the application -->
    <xsl:template match="/policy">
        <xsl:call-template name="generateLayout">
            <xsl:with-param name="content">
                <xsl:call-template name="generateContent">
                </xsl:call-template>
            </xsl:with-param>
        </xsl:call-template>

    </xsl:template>
</xsl:stylesheet>