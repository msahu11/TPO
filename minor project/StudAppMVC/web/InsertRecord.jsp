<%@page import="dto.User"%>
<%@page import="dao.UserAdapter"%>
<%
  String enroll = request.getParameter("a");
   /* String pass = request.getParameter("b");
  String email = request.getParameter("c");
  String cont = request.getParameter("d");
  String name = request.getParameter("e");
  String branch = request.getParameter("f");
  String gen = request.getParameter("g");
  String dob = request.getParameter("h");
  String yr = request.getParameter("i");
  String role = request.getParameter("role");
  
  
  System.out.println(eno+"a "+ pass+" b"+ email);*/
  

  //User stud=new User( eno,  pass, email, cont, name, branch,  yr,dob, gen, role);
  UserAdapter sa = new UserAdapter();
  int t = sa.insertRecord(enroll);
           if(t>0){
               response.sendRedirect("VerifyStudent.jsp");
           }
           else {               response.sendRedirect("Profile.jsp");
}
%>