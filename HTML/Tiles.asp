<html>
<head>
</head>
<body>
<iframe src="phpcart/index.php" style="display:none"></iframe>
  <%
  Option Explicit

  Dim doc, table
  Set doc = CreateObject("htmlfile")

  ' ... set strResponse1 ...

  doc.write strResponse1

  For Each table In doc.getElementById("php").contentWindow.doc.body.getElementsByTagName("TABLE")
      If table.className = "dataTableParent" Then
          ' use DOM methods to navigate to correct table cell and extract data
          ' with the help of, e.g., innerText()
      End If
  Next
  %>
</body>
</html>
