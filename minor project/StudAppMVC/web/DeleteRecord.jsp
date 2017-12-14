<%@page import="dao.UserAdapter"%>
<%
  String eno = request.getParameter("a");
  UserAdapter sa = new UserAdapter();
  int t = sa.deleteRecord(eno);
           if(t>0){
               response.sendRedirect("VerifyStudent.jsp");
           }
           else{               response.sendRedirect("Profile.jsp");
}
%>