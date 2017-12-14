<!DOCTYPE html>
        <style>
            body{
                background-color: #e8be12;
            }
            ul{
                text-align: center;
                background-color: #68adfd;
            }
            li{
                display: inline-block;
                padding:20px;
            }
            a{
                text-decoration: none;
                color:black;
                font-weight: bold;
            }
            a:hover{
                text-decoration: underline;
            }
            #menu{
                width:700px;
                margin: auto;
            }
        </style>
        <div id="menu">
<% 
 response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>

            <%
            String unm = (String)session.getAttribute("UNM");
            String role = (String)session.getAttribute("ROLE");
            %>
            <ul>
                <li><a href="Profile.jsp">Profile</a></li>
                <% if(role.equals("admin")){ %>
                <li><a href="VerifyStudent.jsp">Verify Student</a></li>
                <li><a href="NotifyStudent.jsp">Notify Student</a></li>
                <li><a href="UpdatePage.jsp">Update Page</a></li>
                <li><a href="ViewApp.jsp">View Applications</a></li>
                                <li><a href="FeedbackReply.jsp">View Feedback</a></li>
                             


                                <% } %>
                             
                                <% if(role.equals("student")){ %>
                <li><a href="UpdateProfile.jsp">Update Profile</a></li>
                                <li><a href="View.jsp">View & Apply Recruiters</a></li>
                <li><a href="Feedback.jsp">Feedback</a></li>
                                <li><a href="AdminReply.jsp">Feedback Replies</a></li>


                                <% } %>
                <li><a href="Logout.jsp">Logout</a></li>
            </ul>
        </div>
