<%@page import="dto.Feedback"%>
<%@page import="dao.FeedbackAdapter"%>
<%

       String unm = request.getParameter("a");
      
 String comment = request.getParameter("comment");
 

 Feedback user = new Feedback();
 user.setUnm(unm);
 user.setReply(comment);
 
 FeedbackAdapter ua = new FeedbackAdapter();
 int t = ua.submitReply(user);
 
if(t>0){
         response.sendRedirect("FeedbackReply.jsp?msg=Reply Submitted Successfully!");
       
}
else{
response.sendRedirect("Profile.jsp?msg=Reply Submission Failure");
}
%>