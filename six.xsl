<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/collection">
    <html>
        <head>
            <title>CD'S Collection</title>
        </head>
        <style>
          
            h1{
                text-align:center;
                font-size:35px;
                text-shadow:4px 4px 4px teal;
                padding:10px;
            }
            table{
                margin-left:500px;
            }
            table th{
                font-size:30px;
                text-align:center;
            }
            table td{
                text-align:center;
            }
        </style>
        <body>
            <h1>MY CD'S Collection</h1>
            <table border="1" cellspacing="0" cellpadding="3px">
                <tr>
                    <th>Title</th>
                    <th>Artist</th>
                </tr>

                <xsl:for-each select="cds"> 
                <tr>
                    <td><xsl:value-of select="Title"></xsl:value-of></td>
                    <td><xsl:value-of select="artist"></xsl:value-of></td>
                </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>