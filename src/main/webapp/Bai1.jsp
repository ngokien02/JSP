<%-- 
    Document   : Bai1
    Created on : Oct 16, 2024, 8:04:16 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>First JSP program</h1>
        <form action="Bai1.jsp" method="post">
            What's your name?
            <input type="text" name="hoTen">
            <input type="submit" value="Submit" />  
            <%
                request.setCharacterEncoding("UTF-8");
                String hoTen = request.getParameter("hoTen");
                if(hoTen!=null){
                out.println("</br>Welcome <b>" + hoTen + "</b>");
                }
             %>
        </form>
    </body>
</html>
