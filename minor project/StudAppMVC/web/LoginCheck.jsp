<%@page import="dto.User"%>
<%@page import="dao.UserAdapter"%>
<%
            String unm = request.getParameter("unm");
            String upass = request.getParameter("upass");
            String role = request.getParameter("role");
            
            String c1 = request.getParameter("c1");
            if(c1!=null){
            Cookie c = new Cookie("UNM", unm);
            response.addCookie(c);
            }
            
            User user = new User();
            user.setUnm(unm);
            user.setUpass(upass);
            user.setRole(role);
            
            UserAdapter ua = new UserAdapter();
            boolean b = ua.loginCheck(user);
            
            if(b==true){
                session.setAttribute("UNM", unm);
                session.setAttribute("ROLE", role);
              if(role.equals("student"))
         
                response.sendRedirect("ProfileStudent.jsp");
               else 
                  response.sendRedirect("Profile.jsp");
               
              
            }
            
            else{
                response.sendRedirect("Login.jsp?msg=Invalid username/password");
            }
        
%>