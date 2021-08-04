<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>


<html>
<head>

<h1> Questions Forum</h1> 
<a href="landingPage.jsp">Back to Member Homepage</a> <br> <br>
</head>
<body>

		<form method = "post" action = "askpage.jsp">
		<input type="submit" value = "Ask a Question"/> <br>
		
		<table>
			
			<thead>
				<tr>
						<th>Asker ID</th>
						<th>Date</th>
						<th>Solver ID</th>
						<th>Subject</th>
						<th>Question</th>
						<th>Answer</th>
						<th>Email ID</th>
				</tr>
			</thead>
			<tbody>
			<%
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			
			Connection con = DriverManager.getConnection("jdbc:mysql://jackieqiweidb.ccsa5cmn5isu.us-east-2.rds.amazonaws.com:3306/BuyMe","jackieqiwei", "Mou,.mou97");
		    Statement st = con.createStatement();
		    ResultSet rs;
		    String htmlStr="";
			String sql = "select * from email;";
			rs = st.executeQuery(sql);
		
				
				while (rs.next()) {
			    	htmlStr += "<tr><td>" + rs.getString("sender_email")
			    			+ "</td><td>" + rs.getString("date_time")
			    			+ "</td><td>" + rs.getString("receiver_email")
			    			+ "</td><td>" + rs.getString("subject")
                            + "</td><td>" + rs.getString("ask_content")
			    			+ "</td><td>" + rs.getString("answer_content")
			    			+ "</td><td>" + rs.getString("email_id")
			    			+ "</td></tr>";
					out.print(htmlStr);
					htmlStr = "";
			    }
				
			        
				 if (con != null) {
				        // closes the database connection
				        try {
				            con.close();
				        } catch (SQLException ex) {
				            ex.printStackTrace();
				        }
				    }
				%>
			</tbody>
		</table>
</body>
</html>