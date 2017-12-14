<%@page import="dto.User"%>
<%@page import="dao.UserAdapter"%>
<%
        
            String email = request.getParameter("eml");
            
                        String unm = (String)session.getAttribute("UNM");

            
            User user = new User();
            user.setEmail(email);
                       user.setUnm(unm);

            UserAdapter ua = new UserAdapter();
            int t= ua.updateEmail(user);
            
            if(t>0){
                
                response.sendRedirect("ProfileStudent.jsp?msg=Updation Done");
            }else{
                response.sendRedirect("ProfileStuednt.jsp?msg=Updation Failed");
            }
        
%>