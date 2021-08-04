<%@page import="java.sql.*,java.util.*"%>

<%
    String username = request.getParameter("username");    
    String password = request.getParameter("password");
    String permission_level = "r";

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/BuyMe","jackieqiwei", "Mou,.mou97");
    Statement st = con.createStatement();
   
    int i = st.executeUpdate("insert into account(username, password,permission_level) values ('" + username + "','" + password +"', '" + permission_level + "');");
    if (i > 0) {
        response.sendRedirect("create_repsuccess.jsp");
    } else {
        response.sendRedirect("adminLandingPage.jsp");
    }
    if (con != null) {
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
%>