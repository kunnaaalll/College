<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/class">
<html>
    <head>
        <title>A133_style.xsl</title>
        <style type="text/css"> 

            table,th,td {
            border: 2px solid black; 
            border-collapse: collapse;
            }

            caption{
            font-size: 35px; 
            font-weight: bolder; 
            word-spacing: 6px;
            margin: 30px 0 10px;
            }

            td{
            text-align: center; 
            font-size: 20px; 
            background-color: #bb9bb4;
            }

            th{ 
            background-color: white;
            }

            th, td{
            padding: 18px;
            }
        </style>
    </head>

<body bgcolor="#9BA4BB">
    <table border="1">
        <caption>STUDENTS INFORMATION</caption>

        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Marks</th>
        </tr>
        <xsl:for-each select="student">

        <tr>
            <td> <xsl:value-of select= "name" /> </td>
            <td> <xsl:value-of select= "age" /> </td>
            <td> <xsl:value-of select= "marks" /> </td>
        </tr>
        </xsl:for-each>

    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
