<%

session.removeAttribute("UNM");
session.removeAttribute("ROLE");
session.invalidate();
response.sendRedirect("index.html?msg=You are logged out successfully.");
%>