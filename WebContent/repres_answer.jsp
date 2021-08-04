<%@page import="java.sql.*,java.util.*"%>

<%
    String email_id = request.getParameter("email_id");   
	String receiver_email = request.getParameter("representatives name");
	String answer_content = request.getParameter("answer content");

	 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/BuyMe","jackieqiwei", "Mou,.mou97");
    Statement st = con.createStatement();
    
	ResultSet rs;
	String htmlStr="";
	String sql = ("select * from email where email_id = ('"+ email_id + "')");
	rs = st.executeQuery(sql);

	
	 if (rs.next()) {
	        String sqlEDIT = "UPDATE email set receiver_email = '" + receiver_email + "', answer_content = '" + answer_content + "' where email_id = '" + email_id + "'";
	        int i = st.executeUpdate(sqlEDIT);
	        response.sendRedirect("answersuccess.jsp");
	 }  else { 
	        	response.sendRedirect("repres_answerlist.jsp");
	        }
	
        


    if (con != null) {
        // closes the database connection
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
%>