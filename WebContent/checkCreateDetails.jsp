<%@page import="java.sql.*,java.util.*"%>

<%
    String username = request.getParameter("username");    
    String password = request.getParameter("password");
    String permission_level = "n";

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/BuyMe","jackieqiwei", "Mou,.mou97");
    Statement st = con.createStatement();
   
    int i = st.executeUpdate("insert into account(username, password,permission_level) values ('" + username + "','" + password +"', '" + permission_level + "');");
    if (i > 0) {
        response.sendRedirect("createsuccess.jsp");
    } else {
        response.sendRedirect("login.jsp");
    }
    if (con != null) {
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
%>