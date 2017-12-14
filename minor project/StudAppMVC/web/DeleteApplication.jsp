<%@page import="dto.Application"%>
<%@page import="dao.ApplicationAdapter"%>
<%
  String filter = request.getParameter("a");
    String unm = request.getParameter("b");

  ApplicationAdapter sa = new ApplicationAdapter();
  int t = sa.deleteApp(filter,unm);
           if(t>0){
               response.sendRedirect("ViewApplication.jsp");
           }
           else{               response.sendRedirect("Profile.jsp?msg=Deletion Failed");
}
%>