<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="TriForma">
  <html>
  <body>

      <xsl:apply-templates select="//I-Shapes|//Angles|//Channels|//Tees
                                    |//RectangularShapes|//ConcreteTees
                                    |//ConcreteTeesTapered|//RectangularHollowSections
                                    |//CircularHollowSections|//ChannelsWStiffFlanges
                                    |//Zees|//ConcreteElls|//ConcreteEllsTaper|//SolidRounds
                                    |//Trapezoids|//TaperedWebRectangles|//DoubleTees
                                    |//PreCastIBeams|//PlateGirdersBox|//PlateGirdersExt
                                    |//AsymmetricBeams|//RoofDecks|//DoubleAngles|//Hexagons
                                    |//HexagonHollowSections|//KoreanStaredSections|//Octagons
                                    |//OctagonHollowSections|//StaredDoubleAngles|//DoubleChannels
                                    |//PlateGirders|//ConcreteSuperTees|//ConcreteUs
                                    |//ConcreteBoxes|//TrapezoidalTubes|//EllipticalTubes"/>
  </body>
  </html>
</xsl:template>
<xsl:template match="I-Shapes">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">I-Shapes
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img 
	src="images/Ishape.jpg"
    title="" alt="" style="width: 630px; height: 210px;">
	</img>
	<br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  I-Shapes
	  </tr> 
      <tr>
        <th>name</th>
        <th>d</th>
        <th>tw</th>
        <th>width</th>
        <th>tf</th>
        <th>filletRadius</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="I-Shape">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <td><xsl:value-of select="@width"/></td>
        <td><xsl:value-of select="@tf"/></td>
        <td><xsl:value-of select="@filletRadius"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<xsl:template match="Angles">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">Angles
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/angle.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img>
	<br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  Angles
	  </tr>     
      <tr>
        <th>name</th>
        <th>d</th>
        <th>thickness</th>
        <th>width</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
        <th>Centroid x</th>
        <th>Centroid y</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="Angle">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@thickness"/></td>
        <td><xsl:value-of select="@width"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
        <!--<xsl:apply-templates select="Centroid"/>-->
      </tr>
</xsl:template>

<!-- Channel -->
<xsl:template match="Channels">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">Channels
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	src="images/channel.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  Channels
	  </tr>      
      <tr>
        <th>name</th>
        <th>d</th>
        <th>tw</th>
        <th>width</th>
        <th>tf</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
        <th>Centroid x</th>
        <th>Centroid y</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="Channel">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <td><xsl:value-of select="@width"/></td>
        <td><xsl:value-of select="@tf"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
        <!--<xsl:apply-templates select="Centroid"/>-->
      </tr>
</xsl:template>

<!-- Tee -->
<xsl:template match="Tees">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">Tees
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/tee.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  Tees
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>tw</th>
        <th>width</th>
        <th>tf</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
        <th>Centroid x</th>
        <th>Centroid y</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="Tee">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <td><xsl:value-of select="@width"/></td>
        <td><xsl:value-of select="@tf"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
        <!--<xsl:apply-templates select="Centroid"/>-->
      </tr>
</xsl:template>

<!-- RectangularShape -->
<xsl:template match="RectangularShapes">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">RectangularShapes
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/rectangularshape.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  RectangularShapes
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>width</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="RectangularShape">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@width"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- ConcreteTee -->
<xsl:template match="ConcreteTees">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">ConcreteTees
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/concretetee.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  ConcreteTees
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>tw</th>
        <th>width</th>
        <th>slabThk</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="ConcreteTee">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <td><xsl:value-of select="@width"/></td>
        <td><xsl:value-of select="@slabThk"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- ConcreteTeeTapered -->
<xsl:template match="ConcreteTeesTapered">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">ConcreteTeesTapered
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/concretetaperedtee.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  ConcreteTeesTapered
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>tw</th>
        <th>width</th>
        <th>slabThk</th>
        <th>twTop</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="ConcreteTeeTapered">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <td><xsl:value-of select="@width"/></td>
        <td><xsl:value-of select="@slabThk"/></td>
        <td><xsl:value-of select="@twTop"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- RectangularHollowSections -->
<xsl:template match="RectangularHollowSections">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">RectangularHollowSections
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/rectangularhollowsection.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  RectangularHollowSections
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>thickness</th>
        <th>width</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="RectangularHollowSection">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@thickness"/></td>
        <td><xsl:value-of select="@width"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- CircularHollowSection -->
<xsl:template match="CircularHollowSections">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">CircularHollowSections
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/circularhollowsection.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  CircularHollowSections
	  </tr>
      <tr>
        <th>name</th>
        <th>outerDiameter</th>
        <th>innerDiameter</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="CircularHollowSection">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@outerDiameter"/></td>
        <td><xsl:value-of select="@innerDiameter"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- ChannelsWStiffFlange -->
<xsl:template match="ChannelsWStiffFlanges">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">ChannelsWStiffFlanges
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/channelwithstiffenedflages.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  ChannelsWStiffFlanges
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>tw</th>
        <th>width</th>
        <th>tf</th>
        <th>df</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="ChannelsWStiffFlange">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <td><xsl:value-of select="@width"/></td>
        <td><xsl:value-of select="@tf"/></td>
        <td><xsl:value-of select="@df"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- Zee -->
<xsl:template match="Zees">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">Zees
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/zee.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  Zees
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>tf</th>
        <th>tw</th>
        <th>b</th>
        <th>df</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="Zee">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@tf"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <td><xsl:value-of select="@b"/></td>
        <td><xsl:value-of select="@df"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- ConcreteEll -->
<xsl:template match="ConcreteElls">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">ConcreteElls
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/concreteell.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  ConcreteElls
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>tw</th>
        <th>width</th>
        <th>slabThk</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="ConcreteEll">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <td><xsl:value-of select="@width"/></td>
        <td><xsl:value-of select="@slabThk"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- ConcreteEllTaper -->
<xsl:template match="ConcreteEllsTaper">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">ConcreteEllsTaper
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/concretetaperedell.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  ConcreteEllsTaper
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>tw</th>
        <th>width</th>
        <th>slabThk</th>
        <th>tw2</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="ConcreteEllTaper">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <td><xsl:value-of select="@width"/></td>
        <td><xsl:value-of select="@slabThk"/></td>
        <td><xsl:value-of select="@tw2"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- SolidRound -->
<xsl:template match="SolidRounds">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">SolidRounds
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/solidround.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  SolidRounds
	  </tr>
      <tr>
        <th>name</th>
        <th>outerDiameter</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="SolidRound">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@outerDiameter"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- Trapezoid -->
<xsl:template match="Trapezoids">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">Trapezoids
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/trapezoid.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  Trapezoids
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>b1</th>
        <th>b2</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="Trapezoid">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@b1"/></td>
        <td><xsl:value-of select="@b2"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- TaperedWebRectangle -->
<xsl:template match="TaperedWebRectangles">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">TaperedWebRectangles
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/taperedwebrectangle.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  TaperedWebRectangles
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>b1</th>
        <th>b2</th>
        <th>d2</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="TaperedWebRectangle">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@b1"/></td>
        <td><xsl:value-of select="@b2"/></td>
        <td><xsl:value-of select="@d2"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- DoubleTee -->
<xsl:template match="DoubleTees">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">DoubleTees
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/doubletee.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  DoubleTees
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>width</th>
        <th>tw</th>
        <th>span</th>
        <th>chamfer</th>
        <th>tw2</th>
        <th>slabThk</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="DoubleTee">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@width"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <td><xsl:value-of select="@span"/></td>
        <td><xsl:value-of select="@chamfer"/></td>
        <td><xsl:value-of select="@tw2"/></td>
        <td><xsl:value-of select="@slabThk"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- PreCastIBeam -->
<xsl:template match="PreCastIBeams">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">PreCastIBeams
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/precastibeam.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  PreCastIBeams
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>d1</th>
        <th>d2</th>
        <th>b1</th>
        <th>d3</th>
        <th>d4</th>
        <th>b2</th>
        <th>tw</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="PreCastIBeam">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@d1"/></td>
        <td><xsl:value-of select="@d2"/></td>
        <td><xsl:value-of select="@b1"/></td>
        <td><xsl:value-of select="@d3"/></td>
        <td><xsl:value-of select="@d4"/></td>
        <td><xsl:value-of select="@b2"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- PlateGirderBox -->
<xsl:template match="PlateGirdersBox">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">PlateGirdersBox
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/plategirdersbox.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  PlateGirdersBox
	  </tr>
      <tr>
        <th>name</th>
        <th>width</th>
        <th>topThk</th>
        <th>botThk</th>
        <th>d</th>
        <th>lftThk</th>
        <th>rgtThk</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="PlateGirderBox">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@width"/></td>
        <td><xsl:value-of select="@topThk"/></td>
        <td><xsl:value-of select="@botThk"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@lftThk"/></td>
        <td><xsl:value-of select="@rgtThk"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- PlateGirderExt -->
<xsl:template match="PlateGirdersExt">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">PlateGirdersExt
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/plategirdersext.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  PlateGirdersExt
	  </tr>
      <tr>
        <th>name</th>
        <th>topThk</th>
        <th>topWidth</th>
        <th>botThk</th>
        <th>botWidth</th>
        <th>sidThk</th>
        <th>sidDepth</th>
        <th>b1</th>
        <th>b2</th>
        <th>b3</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="PlateGirderExt">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@topThk"/></td>
        <td><xsl:value-of select="@topWidth"/></td>
        <td><xsl:value-of select="@botThk"/></td>
        <td><xsl:value-of select="@botWidth"/></td>
        <td><xsl:value-of select="@sidThk"/></td>
        <td><xsl:value-of select="@sidDepth"/></td>
        <td><xsl:value-of select="@b1"/></td>
        <td><xsl:value-of select="@b2"/></td>
        <td><xsl:value-of select="@b3"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- AsymmetricBeam -->
<xsl:template match="AsymmetricBeams">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">AsymmetricBeams
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/asymmetricbeam.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  AsymmetricBeams
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>tw</th>
        <th>b1</th>
        <th>tf1</th>
        <th>tf2</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="AsymmetricBeam">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <td><xsl:value-of select="@b1"/></td>
        <td><xsl:value-of select="@tf1"/></td>
        <td><xsl:value-of select="@tf2"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- RoofDeck -->
<xsl:template match="RoofDecks">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">RoofDecks
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/roofdeck.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  RoofDecks
	  </tr>
      <tr>
        <th>name</th>
        <th>width</th>
        <th>d</th>
        <th>span</th>
        <th>ribsizeTop</th>
        <th>ribsizeBottom</th>
        <th>thickness</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="RoofDeck">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@width"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@span"/></td>
        <td><xsl:value-of select="@ribsizeTop"/></td>
        <td><xsl:value-of select="@ribsizeBottom"/></td>
        <td><xsl:value-of select="@thickness"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- DoubleAngle -->
<xsl:template match="DoubleAngles">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">DoubleAngles
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/doubleangles.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  DoubleAngles
	  </tr>
      <tr>
        <th>name</th>
        <th>singleSectionName</th>
        <th>spacing</th>
        <th>Leg1BB</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="DoubleAngle">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@singleSectionName"/></td>
        <td><xsl:value-of select="@spacing"/></td>
        <td><xsl:value-of select="@Leg1BB"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- Hexagon -->
<xsl:template match="Hexagons">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">Hexagons
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/hexagon.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  Hexagons
	  </tr>
      <tr>
        <th>name</th>
        <th>innerDiameter</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="Hexagon">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@innerDiameter"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- HexagonHollowSection -->
<xsl:template match="HexagonHollowSections">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">HexagonHollowSections
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/hexagonhollowsection.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  HexagonHollowSections
	  </tr>
      <tr>
        <th>name</th>
        <th>innerDiameter</th>
        <th>thickness</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="HexagonHollowSection">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@innerDiameter"/></td>
        <td><xsl:value-of select="@thickness"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- KoreanStaredSection -->
<xsl:template match="KoreanStaredSections">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">KoreanStaredSections
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/koreanstaredsection.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  KoreanStaredSections
	  </tr>
      <tr>
        <th>name</th>
        <th>H</th>
        <th>B</th>
        <th>tw</th>
        <th>tf</th>
        <th>C</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="KoreanStaredSection">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@H"/></td>
        <td><xsl:value-of select="@B"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <xsl:apply-templates select="tf"/>
        <xsl:apply-templates select="C"/>
      </tr>
</xsl:template>

<!-- Octagons -->
<xsl:template match="Octagons">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">Octagons
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/octagon.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  Octagons
	  </tr>
      <tr>
        <th>name</th>
        <th>innerDiameter</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="Octagon">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@innerDiameter"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- OctagonHollowSection -->
<xsl:template match="OctagonHollowSections">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">OctagonHollowSections
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/octagonhollowsection.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  OctagonHollowSections
	  </tr>
      <tr>
        <th>name</th>
        <th>innerDiameter</th>
        <th>thickness</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="OctagonHollowSection">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@innerDiameter"/></td>
        <td><xsl:value-of select="@thickness"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- StaredDoubleAngle -->
<xsl:template match="StaredDoubleAngles">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">StaredDoubleAngles
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/stareddoubleangle.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  StaredDoubleAngles
	  </tr>
      <tr>
        <th>name</th>
        <th>singleSectionName</th>
        <th>spacing1</th>
        <th>spacing2</th>
        <th>Leg1BB</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="StaredDoubleAngle">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@singleSectionName"/></td>
        <td><xsl:value-of select="@spacing1"/></td>
        <td><xsl:value-of select="@spacing2"/></td>
        <td><xsl:value-of select="@Leg1BB"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>


<!-- DoubleChannel -->
<xsl:template match="DoubleChannels">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">DoubleChannels
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/doublechannel.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  DoubleChannels
	  </tr>
      <tr>
        <th>name</th>
        <th>singleSectionName</th>
        <th>spacing</th>
        <th>Back2Back</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>
<xsl:template match="DoubleChannel">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@singleSectionName"/></td>
        <td><xsl:value-of select="@spacing"/></td>
        <td><xsl:value-of select="@Back2Back"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>
<!-- PlateGirder -->
<xsl:template match="PlateGirders">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">PlateGirders
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/plategirder.jpg"
	 title="" alt="" style="width: 630px; height: 210px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  PlateGirders
	  </tr>
      <tr>
        <th>name</th>
        <th>d</th>
        <th>tw</th>
        <th>b1</th>
        <th>tf1</th>
        <th>tf2</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="PlateGirder">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@d"/></td>
        <td><xsl:value-of select="@tw"/></td>
        <td><xsl:value-of select="@b1"/></td>
        <td><xsl:value-of select="@tf1"/></td>
        <td><xsl:value-of select="@tf2"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- ConcreteSuperTee -->
<xsl:template match="ConcreteSuperTees">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">ConcreteSuperTees
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/concreteSuperTee.jpg"
	 title="" alt="" style="width: 840px; height: 380px;"></img><br>
	</br>
	<br>
	</br>

	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  ConcreteSuperTees
	  </tr>
      <tr>
        <th>name</th>
        <th>depth</th>
        <th>base</th>
        <th>width_top</th>
        <th>width_fl_top</th>
        <th>width_web</th>
        <th>thick_fl_top</th>
        <th>thick_fl_bot_cl</th>
        <th>fillet_y</th>
        <th>fillet_z</th>
        <th>corner_type</th>
        <th>radius</th>
        <th>chamfer_fl_top_y</th>
        <th>chamfer_fl_top_z</th>
        <th>chamfer_fl_bot_y</th>
        <th>chamfer_fl_bot_z</th>
        <th>recess_y</th>
        <th>recess_z</th>
        <th>fl_bot_slope_y</th>
        <th>fl_bot_slope_z</th>
        <th>web_slope_y</th>
        <th>web_slope_z</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="ConcreteSuperTee">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@depth"/></td>
        <td><xsl:value-of select="@base"/></td>
        <td><xsl:value-of select="@width_top"/></td>
        <td><xsl:value-of select="@width_fl_top"/></td>
        <td><xsl:value-of select="@width_web"/></td>
        <td><xsl:value-of select="@thick_fl_top"/></td>
        <td><xsl:value-of select="@thick_fl_bot_cl"/></td>
        <td><xsl:value-of select="@fillet_y"/></td>
        <td><xsl:value-of select="@fillet_z"/></td>
        <td><xsl:value-of select="@corner_type"/></td>
        <td><xsl:value-of select="@radius"/></td>
        <td><xsl:value-of select="@chamfer_fl_top_y"/></td>
        <td><xsl:value-of select="@chamfer_fl_top_z"/></td>
        <td><xsl:value-of select="@chamfer_fl_bot_y"/></td>
        <td><xsl:value-of select="@chamfer_fl_bot_z"/></td>
        <td><xsl:value-of select="@recess_y"/></td>
        <td><xsl:value-of select="@recess_z"/></td>
        <td><xsl:value-of select="@fl_bot_slope_y"/></td>
        <td><xsl:value-of select="@fl_bot_slope_z"/></td>
        <td><xsl:value-of select="@web_slope_y"/></td>
        <td><xsl:value-of select="@web_slope_z"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<!-- ConcreteU -->
<xsl:template match="ConcreteUs">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">ConcreteUs
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/concreteU.jpg"
	 title="" alt="" style="width: 840px; height: 380px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  ConcreteUs
	  </tr>
      <tr>
        <th>name</th>
        <th>depth</th>
        <th>width_top</th>
        <th>base</th>
        <th>depth_leg</th>
        <th>thk_leg</th>
        <th>tap_left_leg_y</th>
        <th>tap_right_leg_y</th>
        <th>recess_y</th>
        <th>recess_z</th>
        <th>cham_y</th>
        <th>cham_z</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="ConcreteU">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@depth"/></td>
        <td><xsl:value-of select="@width_top"/></td>
        <td><xsl:value-of select="@base"/></td>
        <td><xsl:value-of select="@depth_leg"/></td>
        <td><xsl:value-of select="@thk_leg"/></td>
        <td><xsl:value-of select="@tap_left_leg_y"/></td>
        <td><xsl:value-of select="@tap_right_leg_y"/></td>
        <td><xsl:value-of select="@recess_y"/></td>
        <td><xsl:value-of select="@recess_z"/></td>
        <td><xsl:value-of select="@cham_y"/></td>
        <td><xsl:value-of select="@cham_z"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>
<!-- concrete box -->
<!-- ConcreteBox -->
<xsl:template match="ConcreteBoxes">
  <html>
  <body>
    <!-- section title and image -->
	<font size="+1"><span style="font-weight: bold;">ConcreteBoxes
	</span></font>
	<br>
	</br>
	<br>
	</br>
	<img
	 src="images/concreteBox.jpg"
	 title="" alt="" style="width: 840px; height: 380px;"></img><br>
	</br>
	<br>
	</br>
	<br clear="all">
	</br>
    <!-- end of title and image  -->
    <table border="2" bgcolor="yellow">
      <tr>
	  ConcreteBoxes
	  </tr>
      <tr>
        <th>name</th>
        <th>depth</th>
        <th>width</th>
        <th>thk_web</th>
        <th>thk_top</th>
        <th>thk_bot</th>
        <th>cham_out_bot_only</th>
        <th>cham_in_y</th>
        <th>cham_in_z</th>
        <th>cham_out_y</th>
        <th>cham_out_z</th>
        <th>weight</th>
        <th>area</th>
        <th>Ix</th>
        <th>Iy</th>
        <th>Sx</th>
        <th>Sy</th>
      </tr>

      <xsl:apply-templates/>

    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="ConcreteBox">
      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@depth"/></td>
        <td><xsl:value-of select="@width"/></td>
        <td><xsl:value-of select="@thk_web"/></td>
        <td><xsl:value-of select="@thk_top"/></td>
        <td><xsl:value-of select="@thk_bot"/></td>
        <td><xsl:value-of select="@cham_out_bot_only"/></td>
        <td><xsl:value-of select="@cham_in_y"/></td>
        <td><xsl:value-of select="@cham_in_z"/></td>
        <td><xsl:value-of select="@cham_out_y"/></td>
        <td><xsl:value-of select="@cham_out_z"/></td>
        <xsl:apply-templates select="Dimensions"/>
        <xsl:apply-templates select="Properties"/>
      </tr>
</xsl:template>

<xsl:template match="TrapezoidalTubes">
        <html>
            <body>
                <!-- section title and image -->
                <font size="+1">
                    <span style="font-weight: bold;">
                        TrapezoidalTubes
                    </span>
                </font>
                <br>
                </br>
                <br>
                </br>
                <img
                 src="images/TrapezoidalHollow.jpg"
                 title="" alt="" style="width: 840px; height: 380px;"></img>
                <br>
                </br>
                <br>
                </br>
                <br clear="all">
                </br>
                <!-- end of title and image  -->
                <table border="2" bgcolor="yellow">
                    <tr>
                        TrapezoidalTubes
                    </tr>
                    <tr>
                        <th>name</th>
                        <th>TopWidth</th>
                        <th>BottomWidth</th>
                        <th>Height</th>
                        <th>Thickness</th>
                        <th>BottomOffset</th>
                        <th>weight</th>
                        <th>area</th>
                        <th>Ix</th>
                        <th>Iy</th>
                        <th>Sx</th>
                        <th>Sy</th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </body>
        </html>
    </xsl:template>

<xsl:template match="TrapezoidalTube">
        <tr>
            <td>
                <xsl:value-of select="@name"/>
            </td>
            <td>
                <xsl:value-of select="@TopWidth"/>
            </td>
            <td>
                <xsl:value-of select="@BottomWidth"/>
            </td>
            <td>
                <xsl:value-of select="@Height"/>
            </td>
            <td>
                <xsl:value-of select="@Thickness"/>
            </td>
            <td>
                <xsl:value-of select="@BottomOffset"/>
            </td>
            <xsl:apply-templates select="Dimensions"/>
            <xsl:apply-templates select="Properties"/>
        </tr>
    </xsl:template>
    <!-- EllipticalTube -->
    <xsl:template match="EllipticalTubes">
        <html>
            <body>
                <!-- section title and image -->
                <font size="+1">
                    <span style="font-weight: bold;">
                        EllipticalTubes
                    </span>
                </font>
                <br>
                </br>
                <br>
                </br>
                <img
                 src="images/ellipticaltube.jpg"
                 title="" alt="" style="width: 630px; height: 210px;"></img>
                <br>
                </br>
                <br>
                </br>
                <br clear="all">
                </br>
                <!-- end of title and image  -->
                <table border="2" bgcolor="yellow">
                    <tr>
                        EllipticalTubes
                    </tr>
                    <tr>
                        <th>name</th>
                        <th>R1</th>
                        <th>R2</th>
                        <th>Thickness</th>
                        <th>weight</th>
                        <th>area</th>
                        <th>Ix</th>
                        <th>Iy</th>
                        <th>Sx</th>
                        <th>Sy</th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="EllipticalTube">
        <tr>
            <td>
                <xsl:value-of select="@name"/>
            </td>
            <td>
                <xsl:value-of select="@R1"/>
            </td>
            <td>
                <xsl:value-of select="@R2"/>
            </td>
            <td>
                <xsl:value-of select="@thickness"/>
            </td>
            <xsl:apply-templates select="Dimensions"/>
            <xsl:apply-templates select="Properties"/>
        </tr>
    </xsl:template>


    <xsl:template match="Dimensions">
        <td><xsl:value-of select="@W"/></td>
        <td><xsl:value-of select="@A"/></td>
</xsl:template>

<xsl:template match="Properties">
        <xsl:apply-templates select="Elastic"/>
        <xsl:apply-templates select="Centroid"/>
</xsl:template>

<xsl:template match="Elastic">
        <td><xsl:value-of select="@Ix"/></td>
        <td><xsl:value-of select="@Iy"/></td>
        <td><xsl:value-of select="@Sx"/></td>
        <td><xsl:value-of select="@Sy"/></td>
</xsl:template>

<xsl:template match="Centroid">
        <td><xsl:value-of select="@x"/></td>
        <td><xsl:value-of select="@y"/></td>
</xsl:template>

</xsl:stylesheet>
