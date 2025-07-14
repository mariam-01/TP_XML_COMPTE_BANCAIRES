<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Les opérations</title>
                
            </head>
            <body>
                <h2>Opérations de Type CREDIT</h2>
                
                <table border="1" width="90%">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Montant</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <xsl:for-each select="releve/operations/operation[@type='CREDIT']">
                            <tr>
                                <td><xsl:value-of select="@date"/></td>
                                <td><xsl:value-of select="@montant"/></td>
                                <td><xsl:value-of select="@description"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>