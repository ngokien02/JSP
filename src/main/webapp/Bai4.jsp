<%-- 
    Document   : Bai4
    Created on : Oct 16, 2024, 11:01:49 PM
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
        <h1>Đổi ngoại tệ</h1>
        <form action="Bai4.jsp" method="post">
            <table border="0">
                <tr>
                    <td>Nhập số tiền</td>
                    <td><input type="text" name="tien" /></td>
                </tr>
                <tr>
                    <td>Loại ngoại tệ</td>
                    <td><select name="ngoaiTe" style="width: 100%">
                            <option>USD</option>
                            <option>GBP</option>
                            <option>EUR</option>
                            <option>JPY</option>
                            <option>AUD</option>
                        </select></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Đổi" />
                        <input type="reset" value="Tiếp tục" />
                    </td>
                </tr>
            </table><hr>
        </form>
        <%
            try {
                double tien = Double.parseDouble(request.getParameter("tien"));
                String ngoaiTe = request.getParameter("ngoaiTe");
                DecimalFormat df = new DecimalFormat("#,##0");
                double tienDoi = 0;
                switch (ngoaiTe) {
                    case "USD":
                        tienDoi = tien * 21380;
                        break;
                    case "GBP":
                        tienDoi = tien * 32622.8;
                        break;
                    case "EUR":
                        tienDoi = tien * 23555.67;
                        break;
                    case "JPY":
                        tienDoi = tien * 178.61;
                        break;
                    case "AUD":
                        tienDoi = tien * 16727.44;
                        break;
                }
                out.println("Số VNĐ quy đổi được: " + df.format(tienDoi));
            } catch (Exception e) {
                out.println("");
            }
        %>
    </body>
</html>
