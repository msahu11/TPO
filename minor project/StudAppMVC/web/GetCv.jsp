<%@page import="dto.Application"%>
<%@page import="dao.ApplicationAdapter"%>

<%
  String filter = request.getParameter("a");
    String unm = request.getParameter("b");

  ApplicationAdapter sa = new ApplicationAdapter();
  int t = sa.getCv(filter,unm);
           if(t>0){
               response.sendRedirect("Profile.jsp?msg=Cv Downloaded");
           }
           else{               response.sendRedirect("Profile.jsp?msg= Cv not found");
}
%>