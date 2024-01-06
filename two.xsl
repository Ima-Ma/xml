<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/bank">
        <html>
            <head>
                <title>BANK DATA</title>
                <style>
                    body{
                        background-color:black;
                        color:white;
                    }
                    table{
                        margin-left:630px;
                        margin-top:50px;
                        box-shadow:3px 3px 4px 4px teal;
                    }
                    h1{
                        text-align:center;
                        background-color:teal;
                        
                    }
                    table th{
                        font-size:30px;
                    }
                    
                </style>
            </head>

            <body>
                <h1>Bank Employees Data</h1>
                <table border="1" cellspacing="0px" cellpadding="10px">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Salary</th>
                    </tr>

                    <xsl:for-each select="employee">
                        <tr>
                            <td><xsl:value-of select="id"></xsl:value-of></td>
                            <td><xsl:value-of select="name"></xsl:value-of></td>
                            <td><xsl:value-of select="salary"></xsl:value-of></td>
                        
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>