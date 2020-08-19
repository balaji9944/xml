<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  

   <xsl:template match = "/">
      <html>
         <body>
            <h2 align="center">Customer Reviews</h2>
        
            <table align="center" border = "1">
               <tr bgcolor = "#9acd32">
                  <th>Review Id</th>
                  <th>Customer Name</th>
                  <th>Review Message</th>
                  <th>Rating</th>    
                  <th>Category</th>              
               </tr>               
               <xsl:for-each select = "reviews/review">
                  <tr>
                     <td><xsl:value-of select = "@id"/></td>
                     <td><xsl:value-of select = "concat(firstname,' ',lastname)"/></td>
                     <td><xsl:value-of select = "not(reviewmessage)"/></td>
                     <td><xsl:value-of select = "floor(rating)"/></td>                                
                     <td>
                        <xsl:choose>
                           <xsl:when test = "rating div 5 = 1">
                              High
                           </xsl:when>
              
                           <xsl:when test = "rating div 3 >= 1">
                              Medium
                           </xsl:when>
              
                           <xsl:otherwise>
                              Low
                           </xsl:otherwise>
                        </xsl:choose>
    
                     </td>
                  </tr> 
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>

</xsl:stylesheet>