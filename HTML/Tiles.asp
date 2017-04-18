<html>
<head>
</head>
<body>

  <%
  set XmlObj = Server.CreateObject("Microsoft.XMLHTTP")
  XmlObj.open "POST", "phpcart/index.php"; & request.form("name") & "&firstname=" & request.form("name") & "&action=" & request.form("id") , false
  XmlObj.send formatdata = XmlObj.responseText
  Response.write(formatdata)
  Set XmlObj = nothing
  %>
</body>
</html>
