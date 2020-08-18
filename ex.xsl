<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/catalog">
  <html>
  <body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr>
      <th>title</th>
      <th>artist</th>
      <th>country</th>
    </tr>
    <xsl:for-each select="cd">
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="artist"/></td>
        <td><xsl:value-of select="country"/></td>
      </tr>
    </xsl:for-each>





  </table>  
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>

