<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Employess Details</title>
</head>
<body>
    <h1 align="center">Employee List</h1>
    <table align="center" bgcolor="#fefae0"  border="2">
        <tr>
            <th>Personal Information</th>
            <th>Employement Information</th>
            <th>Contact Information</th>
        </tr>
        <xsl:for-each select="employees/employee">
            <tr>
            
              <td>
             
              <table border="0.9">
              <tr>
              <th align="left">Name</th>
           <td align="left"><xsl:value-of select="personalInformation/firstName"/><xsl:value-of select="personalInformation/lastName"/></td>
              
              </tr>
              <tr>
              <th align="left">DOB</th>
              <td align="left"><xsl:value-of select="personalInformation/dateOfBirth"/></td>
              </tr>
              <tr>
              <th align="left">Gender</th>
              <td align="left"><xsl:value-of select="personalInformation/gender"/></td>
              </tr>
              
              </table>
              </td>
              <td>
              <table border="0.9">
              <tr>
              <th align="left">Position</th>
           <td align="left"><xsl:value-of select="employmentInformation/position"/></td>
              
              </tr>
              <tr>
              <th align="left">Salary</th>
              <td align="left"><xsl:value-of select="employmentInformation/salary"/></td>
              </tr>
             
              </table>
              </td>
              <td>
              <table border="0.9">
              <tr>
              <th align="left">Email</th>
           <td align="left"><xsl:value-of select="contactInformation/email"/></td>
              
              </tr>
              <tr>
              <th align="left">Phone Number</th>
              <td align="left"><xsl:value-of select="contactInformation/phoneNumber"/></td>
              </tr>
             
              </table>
              
              </td>
            </tr>
          </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>