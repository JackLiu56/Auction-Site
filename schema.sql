DROP DATABASE IF EXISTS `BuyMe`;
CREATE DATABASE `BuyMe`;
USE `BuyMe`;

CREATE TABLE account(
	email varchar(50),
    username varchar(15),
    password varchar(20),
    permission_level varchar(1),
    primary key(username)
);

CREATE TABLE email(
	email_id integer not null auto_increment,
    sender_email varchar(15),
    receiver_email varchar(15),
    subject varchar(40),
    ask_content varchar(200),
    answer_content varchar(200),
    date_time  datetime,
    primary key (email_id)
);

CREATE TABLE product(
	product_id integer not null auto_increment,
    description char(140),
    primary key (product_id)
);

CREATE TABLE auction(
	auction_id integer not null auto_increment,
    product_id integer,
    starting_price integer,
    minimum_sell_price integer,
    minimum_increment integer,
    end_date date,
    start_date date,
    leading_bid integer,
    owner varchar(15),
    auction_name varchar(50),
    leading_bidder varchar(15),
    primary key (auction_id),
    foreign key (product_id) references product (product_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE alert(
	alertId integer not null auto_increment,
    username varchar(15),
    alert_content varchar(140),
    auction_id integer,
    primary key (alertId),
    foreign key (username) references account (username),
    foreign key (auction_id) references auction (auction_id)
);

CREATE TABLE bid(
	bid_id integer not null auto_increment,
    auction_id integer,
    current_leader varchar(15),
    bid_amount integer,
    primary key (bid_id),
    foreign key (auction_id) references auction(auction_id) ON UPDATE CASCADE ON DELETE CASCADE
   
);

CREATE TABLE shirt(
	product_id integer,
    brand varchar(20),
    sizes varchar(5),
    color varchar(10),
    shirttype varchar(10),
    primary key (product_id),
    foreign key (product_id) references product(product_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE pant(
	product_id integer,
    brand varchar(20),
    sizes varchar(5),
    color varchar(10),
    waist integer,
    primary key (product_id),
    foreign key (product_id) references product(product_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE shoe(
	product_id integer,
    brand varchar(20),
    sizes varchar(5),
    color varchar(10),
    aglet varchar(15),
    primary key (product_id),
    foreign key (product_id) references product(product_id) ON UPDATE CASCADE ON DELETE CASCADE
);