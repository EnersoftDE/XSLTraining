<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:template name="generateLayout">
        <xsl:param name="content"/>
        <!-- This is the root of the document. -->
        <fo:root>
            <!-- Im <fo:layout-master-set> werden die seitenspezifischen Informationen eingetragen, d. h. die Größe einer Seite, die Ränder, Kopf- und Fußbereich usw. -->
            <fo:layout-master-set>


                <!-- Der <fo:simple-page-master> definiert das Aussehen einer Seite. -->
                <fo:simple-page-master master-name="DIN-A4-ErsteSeite" page-height="297mm" page-width="210mm" margin-top="8mm" margin-bottom="10mm"
                                       margin-left="25mm" margin-right="20mm">
                    <fo:region-body region-name="inhalt" margin-top="100mm" margin-bottom="15mm" />
                    <fo:region-before region-name="kopf_anschreiben" extent="95mm" background-color="red" />
                    <fo:region-after region-name="fuss" extent="15mm" background-color="yellow" />
                </fo:simple-page-master>

                <fo:simple-page-master master-name="DIN-A4-Folgeseiten" page-height="297mm" page-width="210mm" margin-top="8mm" margin-bottom="25mm"
                                       margin-left="25mm" margin-right="20mm">
                    <fo:region-body region-name="inhalt" margin-top="31mm" margin-bottom="15mm" />
                    <fo:region-before region-name="kopf_folgeseite" extent="31mm" background-color="red" />
                </fo:simple-page-master>

                <!-- Das Element <fo:page-sequence-master> legt fest, in welcher Reihenfolge die Seitengestaltungen (Vorgabeseiten) oder Sequenzen von Seitengestaltungen in
                    das Dokument eingefügt werden. Bei den Seitenfolgen (<fo:page-sequence-master>) handelt es sich letztlich um eine Bündelung von Einzelseiten oder von ganzen Sequenzen.
                    In welcher Reihenfolge diese anschließend im Dokument erscheinen, wird mit dem Element <fo:page-sequence> festgelegt. -->
                <fo:page-sequence-master master-name="DIN-A4-Anschreiben">
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference master-reference="DIN-A4-ErsteSeite" page-position="first" />
                        <fo:conditional-page-master-reference master-reference="DIN-A4-Folgeseiten" page-position="rest" />
                    </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>


             <fo:page-sequence master-reference="DIN-A4-Anschreiben">
                <fo:static-content flow-name="kopf_anschreiben">
                    <fo:block>
                        KOPF FIRST
                    </fo:block>
                    <!--xsl:apply-templates select="/root/header" /-->
                </fo:static-content>
                <fo:static-content flow-name="kopf_folgeseite">
                    <fo:block>
                        KOPF SECOND
                    </fo:block>
                    <!--xsl:call-template name="Kopf_Folgeseite">
                        <xsl:with-param name="p" select="/root/header" />
                    </xsl:call-template-->
                    INHALT: xsl:call-template
                    <!-- OLD COMMENT xsl:apply-templates select="/root/header" / -->
                </fo:static-content>
                <fo:static-content flow-name="fuss">
                    <fo:block>
                        FUSS
                    </fo:block>
                    <!--xsl:apply-templates select="/root/footer" /-->
                </fo:static-content>
                <fo:flow flow-name="inhalt">
                    <fo:block>
                        BODY
                        <xsl:copy-of select="$content"/>
                    </fo:block>
                    <!--xsl:apply-templates select="/root/body" /-->
                </fo:flow>
            </fo:page-sequence>
        </fo:root>

    </xsl:template>

    <xsl:template match="header">
        <xsl:apply-imports />
    </xsl:template>
    <xsl:template match="body">
        <fo:block>
            body

        </fo:block>
        <xsl:apply-imports />
        <fo:block id="TheVeryLastPage"> </fo:block>
    </xsl:template>
    <xsl:template match="footer">
        <fo:block>
            footer
        </fo:block>
        <xsl:apply-imports />
    </xsl:template>


</xsl:stylesheet>