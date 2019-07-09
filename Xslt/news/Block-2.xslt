<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="row">
        <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
    </div>
  </xsl:template>

  <xsl:template match="News">
    
    <div class="col-lg-4 col-sm-6">
        <figure>
            <div class="boximg">
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
            <figcaption>
                <div class="box-caption">
                    <img src="/Data/Sites/1/media/giaitri/caption-img.png" alt=""></img>
                    <div class="caption">
                        <h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
                    </div>
                </div>
            </figcaption>
        </figure>
    </div>
  </xsl:template>
</xsl:stylesheet>