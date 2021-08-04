<%@ page import ="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<body>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/BuyMe","jackieqiwei", "Mou,.mou97");
        Statement st = con.createStatement();
        ResultSet resultSet = null;
        String sql = "";
        String username = request.getParameter("username");
        sql =  "select * from auction a where a.owner = '"+username+"'";
        resultSet = st.executeQuery(sql);
        if(resultSet.next()){
            %>
            You have an active action, and thus can not delete your account <br>
            Please click below to return to the landing page <br>
            <a href="landingPage.jsp">here</a>
            <%
        }else{
            sql ="DELETE FROM account  WHERE username = '"+ username + "'";
            int i = st.executeUpdate(sql);
            %>
            <a href="login.jsp">please click here to exit the site</a>
            <%
        }
        %> 
</body>


   