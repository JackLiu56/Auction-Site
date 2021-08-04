<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
int id = Integer.parseInt(request.getParameter("auction_id"));
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/BuyMe","jackieqiwei", "Mou,.mou97");
Statement st=conn.createStatement();
int i = st.executeUpdate("DELETE FROM auction WHERE auction_id="+id);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>
<br>
 <a href="deleteauc_page.jsp">Back to Auction information page</a><br>
 <a href="representativeLandingPage.jsp">Back to Main page</a>