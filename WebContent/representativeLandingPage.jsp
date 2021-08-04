<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>customerRepHome</title>
  </head>
  <body>
        <h1>Welcome, customer service rep</h1> 
        <form action="deletebids_page.jsp">
            search bids by username <br>
            <input name="username" type = "text">
            <button>submit</button>
        </form>

        <form action="deleteauc_page.jsp">
            search auctions by seller <br>
            <input name="username2" type = "text">
            <button>submit</button>
        </form>

        <form action="resetPassword.jsp">
          reset user's password <br>
          <input name="username3" type = "text" placeholder = "username" required><br>
          <input name="newPassword" type = "text" placeholder = "new password" required>
          <button>submit</button>
       </form>
        <a href="repquestionforum.jsp">Answer Questions</a><br>
        <a href='logout.jsp'>Log out</a>
       
  </body>
</html>