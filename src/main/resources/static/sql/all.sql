USE BOOKMARKETDB;

CREATE TABLE IF NOT EXISTS address (

    id int(11) NOT NULL AUTO_INCREMENT,
    country varchar(40),
    zipcode varchar(40),
    addressname varchar(40),
    detailname varchar(40) ,
    primary key(id)

) default CHARSET=utf8;

CREATE TABLE IF NOT EXISTS book(

    b_bookId VARCHAR(10) NOT NULL,
    b_name VARCHAR(30),
    b_unitPrice  INTEGER,
    b_author VARCHAR(50),
    b_description TEXT,
    b_publisher VARCHAR(20),
    b_category VARCHAR(20),
    b_unitsInStock LONG,
    b_releaseDate VARCHAR(20),
    b_condition VARCHAR(20),
    b_fileName  VARCHAR(20),
    PRIMARY KEY (b_bookId)

)DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS cart (

    cartId int(11) NOT NULL,
    grandTotal  LONG,
    primary key(cartId)

) default CHARSET=utf8;

CREATE TABLE IF NOT EXISTS cartitem (

    id int(11) NOT NULL AUTO_INCREMENT,
    quantity INTEGER,
    totalPrice  LONG ,
    primary key(id)

) default CHARSET=utf8;

CREATE TABLE IF NOT EXISTS customer (

    id varchar(40) NOT NULL,
    name varchar(40) ,
    phone varchar(40),
    primary key(id)

) default CHARSET=utf8;

CREATE TABLE IF NOT EXISTS item(

    b_itemId VARCHAR(10) NOT NULL,
    b_name VARCHAR(30),
    b_unitPrice  INTEGER,
    b_author VARCHAR(50),
    b_description TEXT,
    b_publisher VARCHAR(20),
    b_category VARCHAR(20),
    b_unitsInStock LONG,
    b_releaseDate VARCHAR(20),
    b_condition VARCHAR(20),
    b_fileName  VARCHAR(20),
    PRIMARY KEY (b_itemId)

)DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS orders (

    orderId int(11) NOT NULL AUTO_INCREMENT,
    grandTotal INTEGER,
    primary key(orderId)

) default CHARSET=utf8;

CREATE TABLE IF NOT EXISTS orderItem(

    itemId int(11) NOT NULL AUTO_INCREMENT,
    bookid int(11) NOT NULL,
    quantity INTEGER,
    totalPrice DOUBLE,
    primary key(itemId)

) default CHARSET=utf8;

CREATE TABLE IF NOT EXISTS shipping (

    id int(11) NOT NULL AUTO_INCREMENT,
    name varchar(40),
    date varchar(40),
    primary key(id)

) default CHARSET=utf8;