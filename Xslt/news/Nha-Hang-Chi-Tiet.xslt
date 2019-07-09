<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		<div class="nhahang section-kdldaoo">
			<div class="container">
				<h2 class="main-title">
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ZoneTitle"></xsl:value-of>
				</h2>
				<div class="row">
					<div class="col-lg-6">
						<xsl:apply-templates select="/ZoneList/Zone/News" mode="TopNews"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
		<div class="slider-image section-kdldaoo">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone/News" mode="Image"></xsl:apply-templates>
			</div>
		</div>
		<div class="menu-foods section-kdldaoo">
			<div class="container">
				<h2 class="main-title">
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/Zone/ZoneList/Title"></xsl:value-of>
				</h2>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone/News" mode="Menu"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="TopNews">
		<xsl:if test="position()=1">
			<div class="Briefcontent">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="attributes">
				<div class="row">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Image">
		<xsl:if test="position()=2">
			<h2 class="main-title">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</h2>
			<div class="row">
				<div class="col-md-2">
					<div class="btn-left">
						<div class="nav-prev"></div>
					</div>
				</div>
				<div class="col-md-8">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="NewsImages" mode="Slide"></xsl:apply-templates>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="btn-right">
						<div class="nav-next"></div>
					</div>
				</div>
				<div class="mobile-nav">
					<div class="nav-prev"></div>
					<div class="nav-next"></div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Slide">
		<div class="swiper-slide">
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
		</div>
	</xsl:template>
	
	<xsl:template match="News" mode="Menu">
		
		<xsl:apply-templates select="NewsImages" mode="MenuItem"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="NewsImages" mode="MenuItem">
		<div class="col-sm-6 col-lg-4">
			<div class="meal">
				<a href="javascript:void(0)">
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
		</div>
	</xsl:template>
</xsl:stylesheet>