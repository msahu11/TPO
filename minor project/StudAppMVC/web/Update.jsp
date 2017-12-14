<%@page import="dto.Newsfeed"%>
<%@page import="dao.NewsfeedAdapter"%>
<%@page import="dto.Feedback"%>
<%@page import="dao.FeedbackAdapter"%>
<%

           
 String comment = request.getParameter("comment");
 String image = request.getParameter("image");
 
 
 
 
Newsfeed user = new Newsfeed( comment,image);
 
NewsfeedAdapter ua = new NewsfeedAdapter();
 int t = ua.submitNewsfeed(user);
 
if(t>0){
         response.sendRedirect("Profile.jsp?msg=Newsfeed Submitted Successfully!");
        
       
}
else{
response.sendRedirect("Profile.jsp?msg=Newsfeed Submission Failure");
}
%>