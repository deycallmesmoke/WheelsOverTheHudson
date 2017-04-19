<html>
<head>
</head>
<body>
<iframe id="php" src="phpcart/index.php" style="display:none"></iframe>

  <%@ Language= "Javascript" %> 
  <%

  var frame = document.getElementById("php").contentWindow.doc.body
      table = frame.getElementsByTagName("TABLE"),
      cells = table.getElementsByTagName('td');

  for (var i=0,len=cells.length; i<len; i++){
      cells[i].onclick = function(){
          console.log(this.innerHTML);
          /* if you know its going to be numeric:
          console.log(parseInt(this.innerHTML),10);
          */
      }
  }
  %>
</body>
</html>
