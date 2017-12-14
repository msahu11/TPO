<%@page import="dto.User"%>
<%@page import="dao.UserAdapter"%>
<%
        
            String cont = request.getParameter("cont");
            
                        String unm = (String)session.getAttribute("UNM");

            
            User user = new User();
            user.setCont(cont);
                       user.setUnm(unm);

            UserAdapter ua = new UserAdapter();
            int t= ua.updateCont(user);
            
            if(t>0){
                
                response.sendRedirect("ProfileStudent.jsp?msg=Updation Done");
            }else{
                response.sendRedirect("ProfileStudent.jsp?msg=Updation Failed");
            }
        
%>