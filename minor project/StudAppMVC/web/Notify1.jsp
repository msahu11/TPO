 <%@page import="java.util.List"%>
<%@page import="dto.User"%>
<%@page import="dao.UserAdapter"%>
<html>
    <head>
        <title>Student List</title>
    </head>
<body>
<%String a=request.getParameter("filter");%>
<table border='1' align='center' cellpadding='10'>
        <tr><th>Enrollment Number</th>
            <th>Name</th>
            <th>Branch</th>
            <th>Email Address</th>
            <th>Contact Number</th>
<%
    UserAdapter sa = new UserAdapter();
    
    List<User> slist = sa.notify(a);
    
    
    for(User s:slist){
        String enroll = s.getUnm();
   %>
         
        <tr>
            <td><%=enroll%></td>
            <td><%=s.getName()%></td>
            <td><%=s.getBranch()%></td>
            <td><%=s.getEmail()%></td>
            <td><%=s.getCont()%></td>
             
        </tr> 
        <%  }           
        %>
                </table>

        </body>
        </html>