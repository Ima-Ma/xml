<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/class">
        <html>
            <head>
                <title>XSL file</title>
                <style>
                    body{
                        background-color:black;
                        color:white;
                    }
                    table{
                        margin-left:450px;
                        box-shadow:3px 3px 4px 5px gray;
                    }
                    h1{
                        text-align:center;
                        background-color:gray;
                        padding:20px;
                        letter-spacing:10px;
                        font-size:30px;
                        font-weight:bold;
                        text-shadow:3px 3px 3px black;
                    }
                </style>
            </head>
            <body>
                <h1>XSL WORK</h1>
                <table border="1" cellspacing="15px" cellpadding="15px">
                    <tr>
                        <th bgcolor="gray" colspan="4">
                        Student data
                        </th>
                    </tr>
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Number</th>
                        <th>Grade</th>
                    </tr>
                    
                    <xsl:for-each select="student">

                    <tr>
                        <td><xsl:value-of select="name"></xsl:value-of></td>
                        <td><xsl:value-of select="age"></xsl:value-of></td>
                        <td><xsl:value-of select="number"></xsl:value-of></td>
                        <td><xsl:value-of select="grade"></xsl:value-of></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>