<%@ page import ="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/BuyMe","jackieqiwei", "Mou,.mou97");
Statement st = con.createStatement();
ResultSet resultSet = null;
String sql = "";

int auction_id =  Integer.parseInt(request.getParameter("auction_id"));
int bid =  Integer.parseInt(request.getParameter("bid"));
String bidder = request.getParameter("bidder");
sql = "select * from auction a where a.auction_id = " + auction_id ;
resultSet = st.executeQuery(sql);
resultSet.next();

int curBid =  Integer.parseInt(resultSet.getString("leading_bid"));
int minInc =  Integer.parseInt(resultSet.getString("minimum_increment"));
int minStart = Integer.parseInt(resultSet.getString("starting_price"));
if(bid > minStart){
    if(bid>curBid+minInc || bid == curBid+minInc ){
        sql = "insert into bid (bid_id, auction_id, current_leader, bid_amount) values (LAST_INSERT_ID(), "+auction_id+", '"+bidder+"',"+bid+")";
        int i = st.executeUpdate(sql);
        if (i > 0) {}
        else {
            out.print("post failed!");
            response.sendRedirect("sellLanging.jsp");
            return;
        }
        sql = "update auction set leading_bid = "+bid+", leading_bidder = '"+bidder+"' where auction_id = "+auction_id;
        i = st.executeUpdate(sql);
        if (i > 0) {}
        else {
            out.print("post failed!");
            response.sendRedirect("sellLanging.jsp");
            return;
        }

        %>
        <a href="landingPage.jsp">please click here</a>
        <%
    }else{
        %>
        Your bid does not meat the minimum increment <br>
        <a href="landingPage.jsp">click here to try again</a>
        <%
    }
}else{
    %>
    Your bid is below the starting price <br>
    <a href="landingPage.jsp">click here to try again</a>
    <%
}






%>