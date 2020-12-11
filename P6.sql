#a
CREATE TABLE Store (
	`odno` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `code` VARCHAR(20) NOT NULL,
    `item` VARCHAR(30) NOT NULL,
    `qnty` INTEGER UNSIGNED DEFAULT 1,
    `price` DECIMAL(10,2) NOT NULL,
    `discnt` DECIMAL(2,2) DEFAULT 0,
    `mrp` DECIMAL(10,2) NOT NULL
);


#b
INSERT INTO Store (`code`,`item`,`qnty`,`price`,`discnt`,`mrp`) 
VALUES ("SOP","SOAP",2,20,0,20),("BOOK","BOOK",10,45,0.1,50);

#c
SELECT * FROM Store;


#d
CREATE VIEW CART AS
SELECT `item`, `qnty` FROM Store;

#e
INSERT INTO Store (`code`,`item`,`qnty`,`price`,`discnt`,`mrp`) 
VALUES ("GLD","GOLD",10,5000,0,5000);

SELECT * FROM CART;

#f
DROP VIEW CART;