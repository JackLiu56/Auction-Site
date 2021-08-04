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
<h2 align="center"><font><strong>Delete Illegal Auction</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
<td>auction id</td>
<td>auction name</td>
<td>owner</td>
<td>leading bidder</td>
<td>leading bid</td>
<td>start date</td>
<td>end date</td>
<td>minimum increment</td>
<td>minimum sell price</td>
<td>starting price</td>
</tr>
<%
String user = request.getParameter("username2");

try{
connection = DriverManager.getConnection(connectionUrl+database, user_id, psw);
statement=connection.createStatement();
String sql ="select * from auction where leading_bidder = '" + user + "'";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("auction_id") %></td>
<td><%=resultSet.getString("auction_name") %></td>
<td><%=resultSet.getString("owner") %></td>
<td><%=resultSet.getString("leading_bidder") %></td>
<td><%=resultSet.getString("leading_bid") %></td>
<td><%=resultSet.getString("start_date") %></td>
<td><%=resultSet.getString("end_date") %></td>
<td><%=resultSet.getString("minimum_increment") %></td>
<td><%=resultSet.getString("minimum_sell_price") %></td>
<td><%=resultSet.getString("starting_price") %></td>
<td><a href="deleteauc.jsp?auction_id=<%=resultSet.getString("auction_id") %>"><button type="button" class="delete">Delete</button></a></td>
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

