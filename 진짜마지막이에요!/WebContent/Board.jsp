<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	String id = (String)session.getAttribute("ID");	
	String pw = (String)session.getAttribute("PW");
	%>
	ID : <%=id %><br>
	<center><h1>게시판</h1></center>

	<form action="write" method = "post">
		<input type = "submit" name = "write" value ="글작성">
	</form>
	<form action="modify" method = "post">
		<input type = "submit" name = "modify" value ="글수정">
	</form>
	<form  action = "list" method ="post" >
        <input type="text" name = "keyword" placeholder="Search">
        <input type="submit"  value = "검색">
    </form>
    <br><br>
    <center>
   		<table>
		    <tr>
		      <th>#</th>
		      <th>제목</th>
		      <th>작성자</th>
		      <th>작성일</th>
		      <th>조회</th>
		    </tr>
			<tr>
			  <td>1,015</td>
			  <td>asdfasdf</td>
			  <td>asdfasdfasdf</td>
			  <td>흠....</td>
			  <td>음...</td>
			</tr>
		</table>
	</center>
	
	
	
</body>
</html>