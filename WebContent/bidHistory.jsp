<%@ page import ="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<body>
<h1>BID HISTORY</h1>
<table border="1">
        <tr>
        <td>bid id</td>
        <td>auction id</td>
        <td>current leader</td>
        <td>bid amount</td>
        </tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/BuyMe","jackieqiwei", "Mou,.mou97");
Statement st = con.createStatement();
ResultSet resultSet = null;
String sql = "";
String username = request.getParameter("username");
sql = "select * from bid b where b.current_leader = '" + username+"'" ;
resultSet = st.executeQuery(sql);
while (resultSet.next()){
%>
    <tr>
    
    	<td><%=resultSet.getString("bid_id") %></td>
        <td><%=resultSet.getString("auction_id") %></td>
        <td><%=resultSet.getString("current_leader") %></td>
        <td><%=resultSet.getString("bid_amount") %></td>
    </tr>
    <%
    }

con.close();

%>
</table>
</body>
</html>