<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/bank">
        <html>
            <head>
                <title>Bank Employee</title>
            </head>
            <style>
                body{
                    background-color:black;
                    color:white;
                }
                h1{
                    text-align:center;
                    font-size:40px;
                    padding:10px;
                    text-shadow:4px 4px 4px crimson;


                }
                table{
                    margin-left:450px;
                }
                table th{
                    font-size:20px;
                    text-shadow:3px 3px 3px crimson;
                }
            </style>
            <body>
                <marquee behavior="" direction="">XSL WORK</marquee>
                <h1>Employee Table</h1>
                <table border="1" cellpadding="10px" cellspacing="0">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Salary</th>
                        <th>Joining Date</th>
                        <th>Position</th>
                    </tr>
                    <xsl:for-each select="employee">
                    <tr>
                        <td><xsl:value-of select="id"></xsl:value-of></td>
                        <td><xsl:value-of select="name"></xsl:value-of></td>
                        <td><xsl:value-of select="salary"></xsl:value-of></td>
                        <td><xsl:value-of select="joining-date"></xsl:value-of></td>
                        <td><xsl:value-of select="position"></xsl:value-of></td>
                    </tr>

                    </xsl:for-each>
                        
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>