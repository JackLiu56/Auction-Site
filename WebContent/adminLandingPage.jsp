<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>adminLandingPage</title>
  </head>
  <body>
    <p>Create Customer Service Rep</p>
    <form action="create_repre.jsp">
        <input type="text" name = "username" placeholder="username" required> <br>
        <input type="password" name = "password" placeholder = "password" required> <br>
        <button>submit</button>
    </form>
    <br>
    <br>
    <p>Total Earnings</p>
    <form action="totalEarning.jsp">
        <button>submit</button>
    </form>
    <br>
    <br>
    <p>Enter item type</p>
    <form action="earningsPerItemType.jsp">
        <input type="text" name = "perType" required> <br>
        <button>submit</button>
    </form>
    <br>
    <br>

    <p>Enter username to find specific earnings for that account</p>
    <form action="earningsForUser.jsp">
        <input type="text" name = "username" required> <br>
        <button>submit</button>
    </form>

    <p>best selling type</p>
    <form action="earningsPerType.jsp">
        <button>submit</button>
    </form>

    <p>best selling user</p>
    <form action="highestEarner.jsp">
        <button>submit</button>
    </form>
    <a href='logout.jsp'>Log out</a>




  </body>
</html>