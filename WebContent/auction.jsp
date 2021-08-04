<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "";
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

<h1>Please enter the auction id and the amount you wish to bid</h1> <br> <br>

<form method="post" action="set_bid.jsp">
    <input name = "auction_id" type = "number" placeholder="auction id" required><br>
    <input name = "bid" type = "number" placeholder="your bid" required><br>
    enter your username <input name = "bidder" type = "text"  required><br>
    <button>submit</button>
</form>

<br> <br>


<table border="1">
<tr>
<td>auction_id</td>
<td>auction name</td>
<td>seller</td>
<td>leading bid</td>
<td>leading bidder</td>
<td>start date</td>
<td>end date</td>
<td>minimum increment</td>
<td>minimum sell price</td>
<td>starting price</td>


</tr>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/BuyMe","jackieqiwei", "Mou,.mou97");
statement=connection.createStatement();
String productType = request.getParameter("itemType");
String sql = "select * from auction a, " + productType + " p where a.product_id = p.product_id;";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("auction_id") %></td>
<td><%=resultSet.getString("auction_name") %></td>
<td><%=resultSet.getString("owner") %></td>
<td><%=resultSet.getString("leading_bid") %></td>
<td><%=resultSet.getString("leading_bidder") %></td>
<td><%=resultSet.getString("start_date") %></td>
<td><%=resultSet.getString("end_date") %></td>
<td><%=resultSet.getString("minimum_increment") %></td>
<td><%=resultSet.getString("minimum_sell_price") %></td>
<td><%=resultSet.getString("starting_price") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>