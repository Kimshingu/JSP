<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<%
	for(int i=1; i<=9; i++){
		for(int j=1; j<=9; j++){
			out.print(i + "x" + j + "=" + (i*j) + "   ");
		}
		out.print("<br>");
	}
%>
<hr>
<div class="container">
<table class="table table-hover" "table-hover">
	<thead>
		<tr>
		<%for(int i=1; i<=9; i++){ 
			out.print("<th>" + i +"</th>"); 
		}
		%>
		</tr>
	</thead>
	<tbody>
<%
	for(int i=1; i<=9; i++){ // 행
		out.print("<tr>");
		for(int j=1; j<=9; j++){ // 열
			out.print("<td>");
			out.print(i + "x" + j + "=" + (i*j));
			out.print("</td>");
		}
		out.print("</tr>");
	}
%>
	</tbody>

</table>
</div>
</body>
</html>