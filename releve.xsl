<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Relevés Comptes Bancaires</title>
            </head>
            <body>
                <h3>Les données</h3>
                <p><b>RIB :</b> <xsl:value-of select="releve/@RIB"/></p>
                <p><b>Date du relevé :</b> <xsl:value-of select="releve/dateReleve"/></p>
                <p><b>Solde :</b> <xsl:value-of select="releve/solde"/></p>
                
        
                <h2>Liste des opérations</h2>
                <table border="1" width="90%">
                    <thead>
                        <tr>
                            <th>Type</th>
                            <th>Date</th>
                            <th>Montant</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="releve/operations/operation">
                            <tr>
                                <td><xsl:value-of select="@type"/></td>
                                <td><xsl:value-of select="@date"/></td>
                                <td><xsl:value-of select="@montant"/></td>
                                <td><xsl:value-of select="@description"/></td>
                            </tr>
                        </xsl:for-each>
                      
                    </tbody>
                </table>
           
                <h3>Totaux des opérations</h3>
                <table border="1" width="90%">
                    <thead>
                        <tr>
                            <th>Type</th>
                            <th>Nombre d'opérations</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <tr>
                            <td>CREDIT</td>
                            <td><xsl:value-of select="count(releve/operations/operation[@type='CREDIT'])"/></td>
                        </tr>
                       
                        <tr>
                            <td>DEBIT</td>
                            <td><xsl:value-of select="count(releve/operations/operation[@type='DEBIT'])"/></td>
                        </tr>
                    </tbody>
                </table>
                
                <p><b>Total Crédit :</b> 
                    <xsl:value-of select="sum(releve/operations/operation[@type='CREDIT']/@montant)"/> 
                </p>
                <p><b>Total Débit :</b> 
                    <xsl:value-of select="sum(releve/operations/operation[@type='DEBIT']/@montant)"/> 
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>