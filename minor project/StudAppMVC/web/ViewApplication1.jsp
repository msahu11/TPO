 <%@page import="dto.Application"%>
<%@page import="dao.ApplicationAdapter"%>
<%@page import="dto.Recruiter"%>
<%@page import="java.util.List"%>
<%@page import="dto.User"%>
<%@page import="dao.UserAdapter"%>
<%@page import="dao.RecruiterAdapter"%>

<html>
    <head>
        <title>Applications!!</title>
    </head>
<body>
  <% String filter=request.getParameter("filter");%>
  
<table border='1' align='center' cellpadding='10' >
    <% if(filter!=null) {%>
    <caption> <%=filter%> </caption>
<%}%>
        <tr>
            <th>Enrollment Number</th>
            <th>Name</th>
            <th>CGPA</th>
            <th>Email</th>
            <th>Contact</th>
            <th>Cv</th>
                        <th>Delete Application</th>

            
            </tr>
<%
    ApplicationAdapter sa = new ApplicationAdapter();
    
    List<Application> rlist = sa.viewApplication(filter);
    
    
    for(Application s:rlist){
        String unm = s.getUnm();
   %>
         
        <tr>
            <td><%=unm%></td>
            <td><%=s.getName()%></td>
                        <td><%=s.getCgpa()%></td>
            <td><%=s.getEmail()%></td>
            <td><%=s.getCont()%></td>
            <td><a href="GetCv.jsp?a=<%=filter%>&b=<%= unm%>"><%=s.getCvname()%></a>

            <td><a href="DeleteApplication.jsp?a=<%=filter %>&b=<%= unm%>"><img src='del.png'></a>

             
        </tr> 
        <%  }           
        %>
                </table>

        </body>
        </html>