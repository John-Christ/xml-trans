<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <form method="post" action="https://secure.paygate.co.za/payhost/process.trans">
  <h2>Tool Information (edit):</h2>
  <table border="0">
    <xsl:for-each select="Envelope/Body/SinglePaymentRequest/WebPaymentRequest/Order">
    <tr>
      <td><xsl:value-of select="@id"/></td>
      <td>
      <input type="text">
      <xsl:attribute name="id">
        <xsl:value-of select="@id" />
      </xsl:attribute>
      <xsl:attribute name="name">
        <xsl:value-of select="@id" />
      </xsl:attribute>
      <xsl:attribute name="value">
        <xsl:value-of select="value" />
      </xsl:attribute>
      </input>
      </td>
    </tr>
    </xsl:for-each>
  </table>
  <br />
  <input type="submit" id="btn_sub" name="btn_sub" value="Submit" />
  </form>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
