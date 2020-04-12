<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/"> 
 <html> 
 <body> 
  <h1 align="center">какие то статейки</h1> 
   <table border="3" align="center" > 
   <tr> 
    <th>№</th> 
    <th>Title</th> 
    <th>Краткое содержание</th> 
    <th>Nickname</th> 
    <th>Time</th> 
    <th>views</th> 
    <th>habs</th> 
   </tr> 
    <xsl:for-each select="root"> 
    <xsl:for-each select="article"> 
   <tr> 
    <td><xsl:value-of select="@index"/></td> 
    <td><xsl:value-of select="title"/></td> 
    <td><xsl:value-of select="text_article"/></td> 
    <td><xsl:value-of select="nickname"/></td> 
    <td><xsl:value-of select="time"/></td> 
    <td><xsl:value-of select="views"/></td> 
    <xsl:for-each select="habs"> 
        <td href="{@value}">
           <xsl:value-of select="."/>
         </td>
    </xsl:for-each> 
   </tr> 
    </xsl:for-each> 
    </xsl:for-each> 
    </table> 
</body> 
</html> 
</xsl:template> 
</xsl:stylesheet>