<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
   <xsl:template match="/">
       <html>
<head><title>Assignment 4</title></head>
    <body>
        <h1>ABC Financial Startup</h1>
        <p align="center"><img
            src="/financialstartup.jpg"  /></p>
<p>We are a very young financial manager company and we are proud of our clients.</p>
<p>We have started with <xsl:value-of select="count(Accounts/Client/Years[.>=10])"/> client a little bit more than 10 years ago and now we have
<xsl:value-of select="count(Accounts/Client)"/> clients!</p>

<p>These are our clients: 
 <xsl:for-each select="Accounts/Client">
<xsl:value-of select="Name" />  
<xsl:choose>
  
<xsl:when test="position()=last()">.</xsl:when>

<xsl:when test="position()=last()-1">, and</xsl:when>
    
<xsl:otherwise>, </xsl:otherwise>


 </xsl:choose> 
</xsl:for-each>
 </p>
<p> 
<xsl:value-of select="count(Accounts/Client/Years[.>=7])"/> of our clients have been with us for more than 7 years!

</p>




    </body>
</html>


</xsl:template>
</xsl:stylesheet>