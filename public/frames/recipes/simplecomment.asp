<%@ Language="VBScript" %>
<% Option Explicit %> 
<html>
<head>
</head>
<body> 
<%
'declare your variables
Dim recipe, comments
Dim sConnString, connection, sSQL
'Receiving values from Form, assign the values entered to variables
recipe = Request.Form("recipe")
comments =Request.Form("comments")

'declare SQL statement that will query the database 
sSQL = "INSERT into comments_tbl (recipe, comments) values ('" & recipe & "', '" & comments & "')" 
'define the connection string, specify database
'driver and the location of database
sConnString="PROVIDER=Microsoft.Jet.OLEDB.4.0;" & _ 
"Data Source=" & Server.MapPath("comm.mdb") 
'create an ADO connection object 
Set connection = Server.CreateObject("ADODB.Connection")

'Open the connection to the database
connection.Open(sConnString)

'execute the SQL 
connection.execute(sSQL)

'Done. Close the connection object
connection.Close
Set connection = Nothing
%>
</body>
</html>

