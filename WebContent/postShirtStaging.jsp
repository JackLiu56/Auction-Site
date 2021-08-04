
<html>
    <head></head>
    <body>
        <h1>Sell Shirt</h1>
        <br>
        <br>
        <form action="post_shirt.jsp">
                <ul>
                        <li>Product Details</li>
                            <input name = "brand" type = "text" placeholder="Brand" required><br>
                            <input name = "sizes" type = "number" placeholder="Size" required><br>
                            <b>Color</b><br>
                            <input name = "color" type = "text" ><br>
                            <input name = "shirttype" type = "text" placeholder="shirttype"><br>
                            <input name = "description" type = "text" placeholder="Product Description"><br>
                            
                        <li>Auction Details</li>
                            <input name = "auction_name" type = "text" placeholder="Auction Name" required><br>
                            <input name = "owner" type = "text" placeholder="Owner" required><br>
                            <input name = "minimum_increment" type = "number" placeholder="Minimum bid increment" required><br>
                            <input name = "starting_price" type = "number" placeholder="Starting price"required><br>
                            <input name = "minimum_sell_price" type = "number" placeholder="Will not sell if below"required><br>
                            <p>FORMAT YYYY-MM-DD</p>
                            <div>
                                <label for="start_date">Auction Start Date</label>
                                <input type="text" id="start_date" name = "start_date" required>
                            </div>
                            <p>FORMAT YYYY-MM-DD</p>
                            <div>
                                <label for="end_date">Auction End Date</label>
                                <input type="text" id="end_date" name="end_date" required>
                            </div>
                </ul>
            <button>submit</button>
        </form>
    </body>
</html>