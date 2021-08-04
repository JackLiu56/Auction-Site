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
        String username = request.getParameter("username3");
        String newPassword = request.getParameter("newPassword");
        sql =  "select * from account a where a.username = '"+username+"'";
        resultSet = st.executeQuery(sql);
        if(resultSet.next()){
            sql = "update account set password = '" + newPassword + "' where username = '"+ username+"'";
            int i = st.executeUpdate(sql);
            %>
            <a href="representativeLandingPage.jsp"> password is successfully changed </a>
            <%
        }else{
            %>
            <a href="representativeLandingPage.jsp"> cannot find this user </a>
            <%
        }
        %> 
</body>


   