<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
   <xsl:template match="/">
       <html>
    <body>
        
        <h1>ABC Financial Startup</h1>
        <img src="/financialstartup.jpg"></img>
<xsl:for-each select="Accounts/Client"></xsl:for-each>
        <p>We are a very young financial manager company and we are proud of our clients.</p>
        <p>We have started with 1 client a little bit more than 10 years ago and now we have <xsl:value-of select="count(/Accounts/Client[8])"/> clients! </p>
        <p>These are our clients: <xsl:for-each select="Accounts/Client"> 
            <xsl:value-of select="First" /><xsl:text> </xsl:text><xsl:value-of 
      select="Last" />

      <xsl:choose> 
        <xsl:when test="position()=first()">,</xsl:when>  
     </xsl:choose> 
     </xsl:for-each>
     </p>
     <p> <xsl:value-of select="count"(Accounts/Client/Years [>10])" />of our clients are with us for more than 7 years!</p>
    </xsl:for-each>
    </body>
</html>


</xsl:template>
</xsl:stylesheet>