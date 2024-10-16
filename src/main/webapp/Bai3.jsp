<%-- 
    Document   : Bai3
    Created on : Oct 16, 2024, 10:15:12 PM
    Author     : Admin
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tính chu vi - diện tích hình tròn</h1>
        <form action="Bai3.jsp" method="post">
        <table border="0">
                <tr>
                    <td>Nhập bán kính</td>
                    <td>
                        <input type="text" name="banKinh" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Tính" />
                        <input type="reset" value="Tiếp tục" /></td>
                </tr>
        </table><hr>
        </form>
        <%
            DecimalFormat df = new DecimalFormat("0.##");
            String banKinh = request.getParameter("banKinh");
            if(banKinh != null){
                double bk = Double.parseDouble(banKinh);
                double dt = Math.PI * bk * bk;
                double cv = Math.PI * bk * 2;
                out.println("Diện tích : <b>" + df.format(dt) + "</b><br>"
                + "Chu vi: <b>" + df.format(cv) + "</b>");
            }
        %>
    </body>
</html>
