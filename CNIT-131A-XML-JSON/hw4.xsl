<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
   <xsl:template match="/">
       <html>
<head><title>Assignment 4</title></head>
    <body>
        <h1>ABC Financial Startup</h1>
        <img src="/financialstartup.jpg"></img>
<p>We are a very young financial manager company and we are proud of our clients.</p>
<p>We have started with<xsl:value-of select="count (Accounts/Client [. >='10'])"/> client a little bit more than 10 years ago and now we have
<xsl:value-of select="count (Accounts/Client)"/> clients!</p>
<p></p>
<p></p>




    </body>
</html>


</xsl:template>
</xsl:stylesheet>