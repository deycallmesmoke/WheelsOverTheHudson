<% 	
Dim cnnSimple  ' ADO connection
Dim rstSimple  ' ADO recordset
Set cnnSimple = Server.CreateObject("ADODB.Connection")

' DSN
cnnSimple.Open "DRIVER={MySQL ODBC 5.3 Unicode Driver};SERVER=[mySQL server];
DATABASE=[DBName];UID=[DBUser];PASSWORD=[DB Password];"

Set rstSimple = cnnSimple.Execute("SELECT * FROM tblTest")

%>
<P> Connecting to mySQL DB</P>

<table border="1">
<%
Do While Not rstSimple.EOF
 %>
 <tr>
  <td><%= rstSimple.Fields("id").Value %></td>
  <td><%= rstSimple.Fields("name").Value %></td>
 </tr>
 <%
 rstSimple.MoveNext
Loop
%>
</table>
<%
' Close our recordset and connection and dispose of the objects rstSimple.Close Set rstSimple = Nothing cnnSimple.Close Set cnnSimple = Nothing

cnnSimple.close
%>
