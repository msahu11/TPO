<%@page import="dao.ApplicationAdapter"%>
<%@page import="dto.Application"%>

<%

 String unm = (String)session.getAttribute("UNM");
 String email = request.getParameter("email");
 String cont = request.getParameter("no");
 String cv = request.getParameter("cv");
 float cgpa = Float.parseFloat(request.getParameter("cgpa"));
 String name = request.getParameter("username");
 String cname = request.getParameter("cname");
 if(cname==null){
            
                response.sendRedirect("ProfileStudent.jsp?msg=Application Submission Failure ");
}
 else{
 Application user = new Application( unm,  name, cname, email,  cont , cv ,cgpa );
 
ApplicationAdapter ua = new ApplicationAdapter();
 int t = ua.apply(user);
 
if(t>0){
            
                response.sendRedirect("ProfileStudent.jsp?msg=You have applied successfully!");
}
else{
response.sendRedirect("Apply.jsp?msg=Application Submission Failure");
}}
%>