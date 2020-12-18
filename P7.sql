-- a --
CREATE TABLE Store (
	`od_no` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `item` VARCHAR(20) NOT NULL,
    `qnty` INTEGER UNSIGNED NOT NULL,
    `disc` DECIMAL(2,2) DEFAULT(0),
    `mrp` DECIMAL(6, 2) NOT NULL
);

-- b --
INSERT INTO Store (`item`, `qnty`, `disc`, `mrp`)
VALUES ('note', 5, 0, 50), ('pen', 20, 0, 10);

-- c --
SELECT * FROM Store;

-- d --
SELECT MOD(`mrp`, 9) FROM Store;

-- e --
SELECT `mrp`, POWER(`mrp`, 2) FROM Store;

-- f --
SELECT ROUND(`mrp` / 7, 0) FROM Store;