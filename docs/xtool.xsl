<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <form method="post" action="https://secure.paygate.co.za/payhost/process.trans">

  <h2>My Pay Test:</h2>
  <table border="0">
  <xsl:for-each select="Envelope/Body">
    <tr>
        <label>
        <input type="text">
       <td><xsl:value-of select="FirstName"/></td>
       <td><xsl:value-of select="LastName"/></td>
       <td><xsl:value-of select="Telephone"/></td>
       <td><xsl:value-of select="Email"/></td>
       <td><xsl:value-of select="Currency"/></td>
       <td><xsl:value-of select="Amount"/></td>
       <td><xsl:value-of select="Country"/></td>
       <td><xsl:value-of select=""/></td>
       <td><xsl:value-of select=""/></td>
       <td><xsl:value-of select=""/></td>
       </input>
      </label>
     </tr>
    </xsl:for-each>
    </table>
    <br />
  <input type="submit" value="Submit" />

     </form>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
