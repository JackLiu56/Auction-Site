<%@ page import ="java.sql.*" %>
<%  
    String username = request.getParameter("username"); 
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/BuyMe","jackieqiwei", "Mou,.mou97");
    Statement st = con.createStatement();
    ResultSet rs;
    
    rs = st.executeQuery("select * from account where username='" + username + "' and password='" + password + "'");
    if (rs.next()) {
    	session.setAttribute("username", username); 
        out.println("welcome " + username);
        String pl = rs.getString("permission_level");
         
        if (pl.equals("n")) {
        	out.println("normal page");
        	response.sendRedirect("landingPage.jsp");
        } 
        else if (pl.equals("r")) {
        	out.println("representative page");
        	response.sendRedirect("representativeLandingPage.jsp");
        } 
        else if (pl.equals("a")) {
        	out.println("admin page");
        	response.sendRedirect("adminLandingPage.jsp");
        } 
        else {
        	out.println("error page");
        }   
    } 
    else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
%>