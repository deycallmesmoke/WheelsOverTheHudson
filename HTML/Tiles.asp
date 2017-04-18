<html>
<head>
</head>
<body>

  <%
  Dim oConn, oRs
  Dim qry, connectstr
  Dim db_name, db_username, db_userpassword
  Dim db_server

  db_server = "localhost"
  db_name = "shopingcart"
  db_username = "ShopingCart"
  db_userpassword = "Wheels228!"
  fieldname = "name"
  tablename = "shopingcart"

  connectstr = "Driver={MySQL ODBC 3.51 Driver};SERVER=" & db_server & ";DATABASE=" & db_name & ";UID=" & db_username & ";PWD=" & db_userpassword

  Set oConn = Server.CreateObject("ADODB.Connection")
  oConn.Open connectstr

  qry = "SELECT * FROM " & tablename

  Set oRS = oConn.Execute(qry)

  if not oRS.EOF then
  while not oRS.EOF
  response.write ucase(fieldname) & ": " & oRs.Fields(fieldname) & "
  "
  oRS.movenext
  wend
  oRS.close
  end if

  Set oRs = nothing
  Set oConn = nothing

  %>
</body>
</html>
