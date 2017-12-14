<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.MyConnection"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <title>Enter path</title>
    </head>
    <body>
        
        <%
            String filter = request.getParameter("a");
            String eno = request.getParameter("b");
        %>
       <%@include file="Menu.jsp" %>
       <form name='cvfile' action="GetCv.jsp?a=<%=filter%>&b=<%= eno%>" >  
        <label for="path1">Enter Path:</label>
        <input type="text" name="path" size="50" required/>
        <br>
        <input type="submit" name="submit" value="Submit" />  
        </form>

        
          
    </body>
</html>