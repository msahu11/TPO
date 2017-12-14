<%@page import="dto.Student"%>
<%@page import="dao.StudentAdapter"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Student!</title>
</head>
<body>
    <%@include file="Menu.jsp" %>
<h1 align="center">Add Student!</h1>
<form method="post" action="">
<table align="center" border="1">
<tr>
<td>Enter Name</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>Enter Physics Marks</td>
<td><input type="text" name="phy"></td>
</tr>
<tr>
<td>Enter Chemistry Marks</td>
<td><input type="text" name="che"></td>
</tr>
<tr>
<td>Enter Maths Marks</td>
<td><input type="text" name="mat"></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" name="add" value="Add Record"></td>
</tr>
</table>
</form>
</body>
</html>
<%

String btn = request.getParameter("add");
if(btn!=null){
    /*String name = request.getParameter("name");
    float phy = Float.parseFloat(request.getParameter("phy"));
    float che = Float.parseFloat(request.getParameter("che"));
    float mat = Float.parseFloat(request.getParameter("mat"));
        Student student = new Student();
        student.setName(name);
        student.setPhy(phy);
        student.setChe(che);
        student.setMat(mat);*/
    %>

    <jsp:useBean class="dto.Student" id="student"></jsp:useBean> 
    <jsp:setProperty property="*" name="student"></jsp:setProperty>

<%
        
        StudentAdapter sa = new StudentAdapter();
        int t = sa.insertRecord(student);
        if(t>0){
         response.sendRedirect("StudentList.jsp");
        }else{
            out.print("not inserted");
        }
        
}
%>