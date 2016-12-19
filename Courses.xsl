<?xml version = "1.0" encoding = "UTF-8"?>
<!-- xsl stylesheet declaration with xsl namespace: 
Namespace tells the xlst processor about which 
element is to be processed and which is used for output purpose only 
-->
<xsl:stylesheet version = "1.0"
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
  <!-- xsl template declaration:  
template tells the xlst processor about the section of xml 
document which is to be formatted. It takes an XPath expression. 
In our case, it is matching document root element and will 
tell processor to process the entire document with this template. 
-->
  <xsl:template match = "/">
    <!-- HTML tags 
         Used for formatting purpose. Processor will skip them and browser 
            will simply render them. 
      -->

    <html>
      <style>
        table {
        border-collapse: collapse;
        width: 100%;
        }

        th, td {
        text-align: left;
        padding: 8px;
        }

        tr:nth-child(even){background-color: #f2f2f2}
      </style>
      <body>
        <h2>Courses Enrolled</h2>
        <div>
        <table border = "0">
          <tr bgcolor = "#f2b611">
            <th>No.</th>
            <th>Course Number</th>
            <th>Course Name</th>
            <th>Instructor</th>            
          </tr>

          <!-- for-each processing instruction 
               Looks for each element matching the XPath expression 
               -->

          <xsl:for-each select="Courses/CourseList/CourseEnrolled/Course">
            <tr>
              <td>
                <!-- value-of processing instruction 
                        process the value of the element matching the XPath expression 
                        -->
                <xsl:value-of select = "@id"/>
              </td>
              
              <td>
                <xsl:value-of select = "CourseNumber"/>
              </td>
              <td>
                <xsl:value-of select = "CourseName"/>
              </td>
              <td>
                <xsl:value-of select = "Instructor"/>
              </td>       
              

            </tr>
          </xsl:for-each>

        </table>
        </div>

        <div>
          <h2>Degrees</h2>
          <table border = "0">
            <tr bgcolor = "#f2b611">
              <th>No.</th>
             
              <th>Degree Name</th>
              <th>Credits Completed</th>
              <th>Credits Enrolled</th>
              <th>Credits Remaining</th>
              <th>Expected Completion Date</th>

            </tr>

            <!-- for-each processing instruction 
               Looks for each element matching the XPath expression 
               -->

            <xsl:for-each select="Courses/DegreeEnrolled/Degree">
              <tr>
                <td>
                  <!-- value-of processing instruction 
                        process the value of the element matching the XPath expression 
                        -->
                  <xsl:value-of select = "@id"/>
                </td>

               

                <td>
                  <xsl:value-of select = "Name"/>
                </td>
                <td>
                  <xsl:value-of select = "CreditsCompleted"/>
                </td>
                <td>
                  <xsl:value-of select = "CreditsEnrolledFor"/>
                </td>
                <td>
                  <xsl:value-of select = "CreditsRemaining"/>
                </td>

                <td>
                  <xsl:value-of select = "ExpectedCompletionDate"/>
                </td>

              </tr>
            </xsl:for-each>

          </table>
        </div>


        
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>