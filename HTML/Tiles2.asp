<html>
<head>
</head>
<body>

<%
Response.Write "hello"
Dim cnnSimple  ' ADO connection
Dim rstSimple  ' ADO recordset
Set cnnSimple = Server.CreateObject("ADODB.Connection")

' DSN
cnnSimple.Open "localhost"

Set rstSimple = cnnSimple.Execute("SELECT * FROM ShopingCart")

%>
<P> Connecting to mySQL DB</P>

<table border="1">
<%
Do While Not rstSimple.EOF Response.Write "hello"
 %>
 <tr>
  <td><%= rstSimple.Fields("price").Value %></td>
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

</body>
</html>
