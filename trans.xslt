<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:vf="urn:cz:isvs:ruian:schemas:VymennyFormatTypy:v1"
                xmlns:gml="http://www.opengis.net/gml/3.2"
                xmlns:soi="urn:cz:isvs:ruian:schemas:StavObjIntTypy:v1"
>
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:text>id</xsl:text>
        <xsl:call-template name="tab"/>
        <xsl:text>TypStavebnihoObjektuKod</xsl:text>
        <xsl:call-template name="tab"/>
        <xsl:text>ZpusobVyuzitiKod</xsl:text>
        <xsl:call-template name="tab"/>
        <xsl:text>PocetBytu</xsl:text>
        <xsl:call-template name="tab"/>
        <xsl:text>PocetPodlazi</xsl:text>
        <xsl:call-template name="tab"/>
        <xsl:text>x</xsl:text>
        <xsl:call-template name="tab"/>
        <xsl:text>y</xsl:text>
        <xsl:call-template name="crlf"/>

        <xsl:for-each select="//vf:StavebniObjekty/vf:StavebniObjekt">
            <xsl:value-of select="@gml:id"/>
            <xsl:call-template name="tab"/>
            <xsl:value-of select="soi:TypStavebnihoObjektuKod"/>
            <xsl:call-template name="tab"/>
            <xsl:value-of select="soi:ZpusobVyuzitiKod"/>
            <xsl:call-template name="tab"/>
            <xsl:value-of select="soi:PocetBytu"/>
            <xsl:call-template name="tab"/>
            <xsl:value-of select="soi:PocetPodlazi"/>
            <xsl:call-template name="tab"/>
            <xsl:value-of select="translate(soi:Geometrie/soi:DefinicniBod/gml:Point/gml:pos, ' ' , '	')"/>
            <xsl:call-template name="crlf"/>
        </xsl:for-each>
    </xsl:template>


    <xsl:template name="crlf">
            <xsl:text>
</xsl:text>
    </xsl:template>

    <xsl:template name="tab">
        <xsl:text>	</xsl:text>
    </xsl:template>

</xsl:stylesheet>
