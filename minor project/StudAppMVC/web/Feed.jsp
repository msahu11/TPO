<%@page import="dto.Feedback"%>
<%@page import="dao.FeedbackAdapter"%>
<%

            String unm = (String)session.getAttribute("UNM");
 String comment = request.getParameter("comment");
 

 Feedback user = new Feedback( unm,comment);
 
 FeedbackAdapter ua = new FeedbackAdapter();
 int t = ua.submitFeedback(user);
 
if(t>0){
         response.sendRedirect("ProfileStudent.jsp?msg=Feedback Submitted Successfully!");
        
       
}
else{
response.sendRedirect("ProfileStudent.jsp?msg=Feedback Submission Failure");
}
%>