<%
Dim cnnSimple  ' ADO connection
Dim rstSimple  ' ADO recordset
Set cnnSimple = Server.CreateObject("ADODB.Connection")

' DSN
cnnSimple.Open "DRIVER={MySQL ODBC 5.2.7 Unicode Driver};SERVER=[10.42.0.241];
DATABASE=[ShopingCart];UID=[ShopingCart];PASSWORD=[ShopingCart];"

Set rstSimple = cnnSimple.Execute("SELECT * FROM ShopingCart")

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
