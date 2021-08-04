<%@ page import ="java.sql.*" %>

<%
   String description = request.getParameter("description");    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/BuyMe","jackieqiwei", "Mou,.mou97");
    Statement st = con.createStatement();
   
    int i = st.executeUpdate("insert into product(description) values ('" +description + "');");
    if (i > 0) {}
     else {
        out.print("post failed!");
        response.sendRedirect("sellLanging.jsp");
        return;
    }
   

 
    String brand = request.getParameter("brand");    
    String sizes = request.getParameter("sizes");
    String color = request.getParameter("color");    
    String aglet = request.getParameter("aglet");
    
       i = st.executeUpdate("insert into shoe(product_id,brand,sizes,color,aglet) values ((LAST_INSERT_ID()),'" + brand + "','" + sizes + "','" + color + "','" + aglet + "');");
    if (i > 0) {}
     else {
        out.print("post failed!");
        response.sendRedirect("sellLanging.jsp");
        return;
    }
    

    String auction_name = request.getParameter("auction_name");    
    String owner = request.getParameter("owner");
    int	starting_price = Integer.parseInt(request.getParameter("starting_price"));
    int	leading_bid = 0;
    String start_date = request.getParameter("start_date");    
    String end_date = request.getParameter("end_date");
    int minimum_sell_price = Integer.parseInt(request.getParameter("minimum_sell_price"));
    int minimum_increment = Integer.parseInt(request.getParameter("minimum_increment"));
    
   
    i = st.executeUpdate("insert into auction(product_id, auction_name, owner, starting_price, leading_bid, start_date, end_date, minimum_sell_price, minimum_increment) values ((LAST_INSERT_ID()), '" + auction_name + "','" + owner +"','" + starting_price +"','" + leading_bid +"','" + start_date +"','" + end_date +"','" + minimum_sell_price +"','" + minimum_increment +"');");
    if (i > 0) {
        out.print("post auction successful!");
        response.sendRedirect("auctionCreationResult.jsp");
    } else {
        out.print("post electronics failed!");
        response.sendRedirect("sellLanding.jsp");
        return;
    }
    if (con != null) {
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
%>