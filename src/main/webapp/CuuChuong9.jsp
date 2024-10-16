<%-- 
    Document   : CuuChuong9
    Created on : Oct 16, 2024, 7:45:59 AM
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
        <h1>Cửu chương 9</h1>
        <ul>
            <%
                for(int i = 1; i <= 10; i++){
                    out.println("<li>9 x" + i + " = " + (9*i));
                }
            %>
        </ul>
    </body>
</html>
