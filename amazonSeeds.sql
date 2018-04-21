DROP DATABASE IF EXISTS amazonDB;

CREATE DATABASE amazonDB;

USE amazonDB;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  item VARCHAR(45) NULL,
  stock INT(10) NULL,
  description VARCHAR(50) NULL,
  price INT NULL,
  PRIMARY KEY (id)
);

INSERT INTO products (item, stock, description, price)
VALUES ("Chocolate Bar", 450, "Willey Wonka's Lost Chocolate Bar!!!", 5);

INSERT INTO products (item, stock, description, price)
VALUES ("Sweater Vest", 15, "A wool sweater vest hand knitted by your Grandmother", 25);

INSERT INTO products (item, stock, description, price)
VALUES ("DVD Set of New Girl", 140, "New Girl on DVD, Collector's Edition!! Season 1-6", 15);

INSERT INTO products (item, stock, description, price)
VALUES ("Funny Coffee Mug", 53, "Ceramic Coffee Mug saying 'I Hate Morning People'", 12);

INSERT INTO products (item, stock, description, price)
VALUES ("Subaru Crosstrek", 12, "2018 Subaru Crosstrek, Limited Edition", 25000);

INSERT INTO products (item, stock, description, price)
VALUES ("Corn Dogs", 60, "15 Corn Dogs per package",4);

INSERT INTO products (item, stock, description, price)
VALUES ("Beach Towl", 44, "Water Proof Beach Towel! Warning!!! Please keep away from Sandy Areas!!", 16);

INSERT INTO products (item, stock, description, price)
VALUES ("Pandesal", 88, "Fresh Bread Rolls! 12 to a Pack", 6);

INSERT INTO products (item, stock, description, price)
VALUES ("Donald Trump's Twitter Login", 1, "Donald Trump's personal twitter page login credentials", 1000000);

INSERT INTO products (item, stock, description, price)
VALUES ("Gum From Under a Desk", 240, "Gum from under the desks at Mission Bay High School, 5 Chewed pieces per pack", 1);