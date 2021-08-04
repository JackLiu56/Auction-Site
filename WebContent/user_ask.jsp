<%@page import="java.sql.*,java.util.*"%>

<%
    String sender_email = request.getParameter("username");
    String date_time = request.getParameter("date_time");
     
    String subject = request.getParameter("subject");
    String ask_content = request.getParameter("question");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/BuyMe","jackieqiwei", "Mou,.mou97");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into email(sender_email, date_time, subject,ask_content) values ('" + sender_email + "', '" + date_time + "','" + subject + "', '" + ask_content + "')");
    if (i > 0) {
        response.sendRedirect("asksuccess.jsp");
    } else {
        response.sendRedirect("askpage.jsp");
    }
    if (con != null) {
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
%>