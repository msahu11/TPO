<%@page import="dao.FeedbackAdapter"%>
<%@page import="dao.UserAdapter"%>
<%
  String eno = request.getParameter("a");
  FeedbackAdapter sa = new FeedbackAdapter();
  int t = sa.deleteFeed(eno);
           if(t>0){
               response.sendRedirect("FeedbackReply.jsp");
           }
           else{               response.sendRedirect("Profile.jsp?msg=Deletion failed!");
}
%>