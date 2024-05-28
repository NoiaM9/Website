<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Întrebări frecvente</title>
        <style>
		
          /* Stilizare pentru întrebări și răspunsuri */
          h2 {
            color: black;
          }
          p {
            color: green;
          }
          ul {
            list-style-type: none;
            padding: 0;
          }
          li {
            margin: 5px 0;
          }
        </style>
      </head>
      <body>
        <h1>Întrebări frecvente</h1>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="faq">
    <div>
      <h2><xsl:value-of select="question"/></h2>
      <p>
        <xsl:value-of select="answer"/>
      </p>
    </div>
  </xsl:template>

  <!-- Template pentru afișarea listei de salate -->
  <xsl:template match="salads">
    <ul>
      <xsl:apply-templates select="salad[price &lt; 20]"/>
    </ul>
  </xsl:template>

  <!-- Template pentru afișarea fiecărei salate -->
  <xsl:template match="salad">
    <li>
      <xsl:value-of select="concat(name, ' - ', price, ' lei, ', calories, ' calorii')"/>
    </li>
  </xsl:template>

</xsl:stylesheet>
