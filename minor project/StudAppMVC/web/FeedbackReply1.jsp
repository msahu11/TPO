 <%@page import="dto.Feedback"%>
<%@page import="dao.FeedbackAdapter"%>
<%@page import="dto.Recruiter"%>
<%@page import="java.util.List"%>
<%@page import="dto.User"%>
<%@page import="dao.UserAdapter"%>
<%@page import="dao.RecruiterAdapter"%>

<html>
    <head>
        <title>Feedbacks!</title>
    </head>
<body>
<table border='1' align='center' cellpadding='10'>
        <tr>
            <th>Enrollment Number</th>
            <th>Feedback</th>
            <th colspan="2" >Reply Feedback</th></tr>

<%
    FeedbackAdapter sa = new FeedbackAdapter();
    
    List<Feedback> flist = sa.showFeedback();
    
    
    for(Feedback s:flist){
        String unm = s.getUnm();
   %>
         
        <tr>
            <td><%=unm%></td>
            <td><%=s.getFeed()%></td>
           <td><a href="DeleteFeed.jsp?a=<%=unm%> "><img src='del.png'></a>
            </td>
            <td><a href="AdminFeedback.jsp?a=<%=unm%> "><img src='reply.png' height="25" width="25"></a>
            </td>
             
        </tr> 
        <%  } 

        %>
                </table>

        </body>
        </html>