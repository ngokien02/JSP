<%-- 
    Document   : Bai2
    Created on : Oct 16, 2024, 8:13:04 AM
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
        <h1>Tính diện tích - chu vi hình chữ nhật</h1>
        <form action="Bai2.jsp" method="post">
            <table border ="0">
                <tr>
                    <td>Nhập chiều dài:</td>
                    <td><input type="text" name="dai" /></td>
                </tr>
                <tr>
                    <td>Nhập chiều rộng:</td>
                    <td><input type="text" name="rong" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Tính toán" />
                        <input type="reset" value="Tiếp tục" />
                    </td>
                </tr>
            </table>
        </form>
        <%
            String dai = request.getParameter("dai");
            String rong = request.getParameter("rong");
            if(dai!=null && rong!=null){
                double d = Double.parseDouble(dai);
                double r = Double.parseDouble(rong);
                double dt = d * r;
                double cv = (d + r) * 2;
                out.println("Diện tích: <b>" + dt + "</b></br>");
                out.println("Chu vi <b>" + cv + "</b>");
            }
            %>
    </body>
</html>
