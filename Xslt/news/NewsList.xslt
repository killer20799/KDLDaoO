<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="tintuc section-kdldaoo">
      <div class="container">
        <h2 class="main-title"><xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of></h2>
        <div class="row">
          <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="News">
    <div class="col-lg-4 col-md-6">
      <figure>
        <div class="boximg">
          <a>
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="target">
                <xsl:value-of select="Target"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <img>
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
            </img>
          </a>
        </div>
        <figcaption>
          <date><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></date>
          <h3>
            <a>
              <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="target">
                  <xsl:value-of select="Target"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="title">
                  <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
              <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
            
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
          </h3>
        </figcaption>
      </figure>
    </div>
  </xsl:template>
</xsl:stylesheet>