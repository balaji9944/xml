<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" exclude-result-prefixes="xlink">

<xsl:template match="/CATALOG">
  <html>
  <body>
  <h2>TOP PHONES IN INDIA 2020</h2>
  <h4 style="#FFFF00">HIGH END PHONE</h4>
  <h4>MID RANGE / LOW RANGE PHONE</h4>
  <table border="1">
    <tr>
      <th>(POSITION())S.NO</th>
      <th>(ID)PHONE ID</th>
      <th>(CONCATED)PHONE NAME</th>
      <th>(FLOORED)PRICE</th>
      <th>MODEL</th>
      <th>BRAND</th>
      <th>LINK</th>
      <th>PRICE(HIGH-END HIGHLIGHTED)</th>
    </tr>
    <xsl:for-each select="TOPPHONES">
      <tr>
        <td><xsl:value-of select = "position()"/></td>
        <td><xsl:value-of select = "@id"/></td>
        <td><xsl:value-of select = "concat(BRAND,' ',MODEL)"/></td>
        <td><xsl:value-of select = "floor(PRICE)"/></td>
        <td><xsl:value-of select="MODEL"/></td>
        <td><xsl:value-of select="BRAND"/></td>
        <td><xsl:value-of select="homepage"/></td>
        <xsl:choose>
          <xsl:when test="PRICE > 15000">
             <td bgcolor="#FFFF00">
             <xsl:value-of select="PRICE"/>
             </td>
          </xsl:when>
          <xsl:otherwise>
             <td><xsl:value-of select="PRICE"/></td>
          </xsl:otherwise>
        </xsl:choose>
       
      </tr>
    </xsl:for-each>
  </table>  
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>

