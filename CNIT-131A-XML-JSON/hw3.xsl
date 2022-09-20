<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">

<html>
    <body>
    <h1>List of Clients</h1>
    <table bordercolor="blue" border="1">
      <tr>
        <th>Name</th>
        <th>Phone</th>
        <th>Email</th>
        <th style="text-align:right">Account Total</th>
      </tr>
    <xsl:for-each select="Accounts/Client">
      <tr>
        <td><xsl:value-of select="Name"/></td>
        <td><xsl:value-of select="Phone"/></td>
        <td><xsl:value-of select="Email"/></td>
        <td>
        <xsl:value-of select="Account_Total"/>
        <xsl:choose>
          <xsl:when test="Account_Total &lt;='80000'">
            <td color="#ff00ff">

        </td>
        </xsl:when>
      </tr>
    </xsl:for-each>
    </table>
    </body>
    </html>


</xsl:template>
</xsl:stylesheet>