<%@page import="dao.UserAdapter"%>
<%@page import="dto.User"%>
<%@page import="dto.Student"%>
<%@page import="java.util.List"%>
<%@page import="dao.StudentAdapter"%>

<html>
    <head>
        <title>Recruiter List</title>
    </head>
    <body>
       <%@include file="Menu.jsp" %>
        <h1 align='center'></h1>
          <form action="ViewApplication.jsp" method="post" >
        <input type="text" name="filter"  placeholder="enter company name to filter"/>
        <input type="submit" name="b" id="b1" />
          </form>
         
          
    </body>
</html>

