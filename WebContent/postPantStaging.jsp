
<html>
    <head></head>
    <body>
        <h1>Sell Pants</h1>
        <br>
        <br>
        <form action="post_pant.jsp">
                <ul>
                        <li>Product Details</li>
                            <input name = "brand" type = "text" placeholder="Brand" required><br>
                            <input name = "sizes" type = "number" placeholder="Size" required><br>
                            <b>Color</b><br>
                            <input name = "color" type = "color" ><br>
                            <input name = "waist" type = "text" placeholder="Waist size"><br>
                            <input name = "description" type = "text" placeholder="Product Description"><br>
                            
                        <li>Auction Details</li>
                            <input name = "auction_name" type = "text" placeholder="Auction Name" required><br>
                            <input name = "owner" type = "text" placeholder="Owner" required><br>
                            <input name = "minimum_increment" type = "number" placeholder="Minimum bid increment" required><br>
                            <input name = "starting_price" type = "number" placeholder="Starting price"required><br>
                            <input name = "minimum_sell_price" type = "number" placeholder="Will not sell if below"required><br>
                </ul>
            <button>submit</button>
        </form>
    </body>
</html>