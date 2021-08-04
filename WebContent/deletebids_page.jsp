<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/";
String database = "BuyMe";
String user_id = "jackieqiwei";
String psw = "Mou,.mou97";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>
<h2 align="center"><font><strong>Delete Bids</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
<td><b>bid_id</b></td>
<td><b>auction_id</b></td>
<td><b>current_leader</b></td>
<td><b>bid_amount</b></td>
</tr>
<%
String user = request.getParameter("username");

try{
connection = DriverManager.getConnection(connectionUrl+database, user_id, psw);
statement=connection.createStatement();
String sql ="select * from bid where current_leader = '" + user + "'";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("bid_id") %></td>
<td><%=resultSet.getString("auction_id") %></td>
<td><%=resultSet.getString("current_leader") %></td>
<td><%=resultSet.getString("bid_amount") %></td>
<td><a href="deletebids.jsp?bid_id=<%=resultSet.getString("bid_id") %>"><button type="button" class="delete">Delete</button></a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>

<a href="representativeLandingPage.jsp">Back to Main page</a>
