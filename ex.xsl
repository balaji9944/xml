<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" exclude-result-prefixes="xlink">

<xsl:template match="/CATALOG">
  <html>
  <body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr>
      <th>MODEL</th>
      <th>BRAND</th>
      <th>PRICE</th>
      <th>LINK</th>
    </tr>
    <xsl:for-each select="TOPPHONES">
      <tr>
        <td><xsl:value-of select = "@id"/></td>
        <td><xsl:value-of select = "concat(BRAND,' ',MODEL)"/></td>
        <td><xsl:value-of select = "not(BRAND)"/></td>
        <td><xsl:value-of select = "floor(PRICE)"/></td>
        <td><xsl:value-of select="MODEL"/></td>
        <td><xsl:value-of select="BRAND"/></td>
        <td><xsl:value-of select="PRICE"/></td>
        <td><xsl:value-of select="homepage"/></td>
      </tr>
    </xsl:for-each>
  </table>  
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>

