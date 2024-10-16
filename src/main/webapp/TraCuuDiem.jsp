<%-- 
    Document   : TraCuuDiem
    Created on : Oct 16, 2024, 10:07:14 AM
    Author     : Admin
--%>

<%@page import="my.common.DataBaseUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tra cứu điểm</h1>
        <form action="TraCuuDiem.jsp" method="post">
            Số báo danh <input type="text" name="soBD" />
            Họ tên <input type="text" name="hoTen" />
            <button type="submit">Tra cứu</button>
        </form>

        <%
            request.setCharacterEncoding("UTF-8");
            String hoTen = request.getParameter("hoTen");
            String soBD = request.getParameter("soBD");
            if (hoTen != null || soBD != null) {
                Connection conn = null;
                PreparedStatement ps = null;
                ResultSet rs = null;

                conn = DataBaseUtil.getConnection();
                if (hoTen != null && !hoTen.isEmpty()) {
                    ps = conn.prepareStatement("Select * from thisinh where hoten like ?");
                    ps.setString(1, "%" + hoTen + "%");
                } else if (soBD != null && !soBD.isEmpty()) {
                    ps = conn.prepareStatement("Select * from thisinh where sobd=?");
                    ps.setString(1, soBD);
                }
                rs = ps.executeQuery();
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>Số báo danh</th>
                    <th>Họ tên</th>
                    <th>Địa chỉ</th>
                    <th>Điểm toán</th>
                    <th>Điểm lý</th>
                    <th>Điểm hóa</th>
                    <th>Tổng điểm</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while (rs.next()) {
                        double tongDiem = rs.getFloat("toan") + rs.getFloat("ly") + rs.getFloat("hoa");
                %>
                <tr>
                    <td><%= rs.getString(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%= rs.getFloat(4) %></td>
                    <td><%= rs.getFloat(5) %></td>
                    <td><%= rs.getFloat(6) %></td>
                    <td><%= tongDiem %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <% } %>
    </body>
</html>
