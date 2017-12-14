<%@page import="dto.User"%>
<%@page import="dao.UserAdapter"%>
<%

 String unm = request.getParameter("userid");
 String upass = request.getParameter("passid");
 String email = request.getParameter("email");
 String cont = request.getParameter("no");
 String year = request.getParameter("yr");
 String branch = request.getParameter("branch");
 String dob = request.getParameter("dob");
 String name = request.getParameter("username");
 String gen = request.getParameter("sex");
 String role = "student";

 User user = new User( unm,  upass,  email,  cont,  name,  branch,  year,  dob,  gen,role);
 
 UserAdapter ua = new UserAdapter();
 int t = ua.registerUser(user);
 
if(t>0){
                session.setAttribute("UNM", unm);
                session.setAttribute("ROLE",role);
                response.sendRedirect("index.html?msg=You are registered successfully!");
}
else{
response.sendRedirect("index.html?msg=Registration Failure");
}
%>