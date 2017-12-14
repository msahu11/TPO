<%@page import="dao.UserAdapter"%>
<%@page import="dto.User"%>
<%@page import="dto.Student"%>
<%@page import="java.util.List"%>
<%@page import="dao.StudentAdapter"%>

<html>
    <head>
        <title>Student List</title>
    </head>
    <body>
       <%@include file="Menu.jsp" %>
        <h1 align='center'>Student List!</h1>
          <form action="Notify.jsp" method="post" >
        <input type="text" name="filter"  placeholder="enter branch to filter"/>
        <input type="submit" name="b" id="b1" />
          </form>
         
          
    </body>
</html>

