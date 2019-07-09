<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="home-block-4">
            <div class="container">
                <div class="row">
                    <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                </div>
            </div>
        </div>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<div class="col-lg-8">
                    <h2 class="main-title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
                    <xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
                </div>
			</xsl:when>
			<xsl:when test="position()=2">
				<div class="col-lg-4">
                    <h2 class="main-title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
                    <xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
                </div>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="News1">
        <div class="row">
            <div class="col-lg-6 col-md-8">
                <div class="main-news">
                    <figure>
                        <div class="boximg"><img src="./img/home/news_1.jpg" alt=""></div>
                        <figcaption>
                            <date>20/05/2019</date>
                            <h3>Khám phá vẻ đẹp đảo Ó - Đồng Trường</h3>
                            <p>Khi bạn đã quá mệt mỏi với công việc, bị bủa vây bởi những khói bụi của cuộc sống đô thị thì còn gì tuyệt vời hơn là được cùng bạn bè đắm chìm trong không gian trong lành, thanh mát, được thưởng thức những món ẩm thực dân dã. Đảo Ó - Đồng Trường là một lựa chọn thú vị.</p>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="col-lg-6 col-md-4">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="other-news">
                            <figure>
                                <div class="boximg"><img src="./img/home/news_1.jpg" alt=""></div>
                                <figcaption>
                                    <date>20/05/2019</date>
                                    <h3>Về Đồng Nai nhớ ghé thăm Đảo Ó</h3>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="other-news">
                            <figure>
                                <div class="boximg"><img src="./img/home/news_1.jpg" alt=""></div>
                                <figcaption>
                                    <date>20/05/2019</date>
                                    <h3>Về Đồng Nai nhớ ghé thăm Đảo Ó</h3>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="other-news">
                            <figure>
                                <div class="boximg"><img src="./img/home/news_1.jpg" alt=""></div>
                                <figcaption>
                                    <date>20/05/2019</date>
                                    <h3>Về Đồng Nai nhớ ghé thăm Đảo Ó</h3>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</xsl:template>
	<xsl:template match="News" mode="News2">
		<h2 class="main-title">Video</h2>
        <div class="row">
            <div class="col-lg-12 col-md-8">
                <div class="main-video">
                    <figure>
                        <div class="image">
                            <div class="boximg"><img src="./img/home/news_1.jpg" alt=""></div>
                            <div class="play-btn"><img src="./img/home/play-btn.png" alt=""></div>
                        </div>
                        <figcaption>
                            <h3>Ngắm tổng quan về Khu du lịch Đảo Ó ở hồ Trị An - Đồng Nai</h3>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="col-lg-12 col-md-4">
                <div class="row">
                    <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="other-video">
                            <figure>
                                <div class="boximg"><img src="./img/home/news_1.jpg" alt=""></div>
                                <div class="play-btn"><img src="./img/home/play-btn.png" alt=""></div>
                            </figure>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="other-video">
                            <figure>
                                <div class="boximg"><img src="./img/home/news_1.jpg" alt=""></div>
                                <div class="play-btn"><img src="./img/home/play-btn.png" alt=""></div>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</xsl:template>
</xsl:stylesheet>
