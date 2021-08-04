<!DOCTYPE html>
<html>
   <head>
      <title>User Ask</title>
   </head>
   <body>
     <h1>Ask a Question</h1>
		<form method="post" action="user_ask.jsp">
		<table>
                <tr>
                        <td>Username </td> 
                        <td><input type="text" name="username" required="required"></td>
                        </tr>
                        
                        <tr>
                        <td>Date (Format: YYYY-MM-DD HH-MM-SS)</td> 
                        <td><input type="text" name="date_time" required="required"></td>
                        </tr>
                        
                          <tr>
                        <td>subject</td>
                        <td><input type="text" name="subject" required="required"></td>
                           </tr>
                           
                           <tr>
                        <td>Question</td>
                        <td><input type="text" name="question" required="required"></td>
                           </tr>
                        
                          <tr>
                        <td><input type="submit" value="ASK" /></td>
                         </tr>
                        
        </table>
		
       
     
     
     
   </body>
</html>