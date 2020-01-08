

-- Introduction to Joins 

-- Select the Database.

	USE `DemoDB`;

-- Create  

	CREATE TABLE `Dept`(
		`DeptID` INT PRIMARY KEY,
		`Name` VARCHAR(50)
	); 

	CREATE TABLE `Employee`(
		`EmpID` INT PRIMARY KEY,
		`Name` VARCHAR(50),
		`DeptID` INT REFERENCES Dept
	); 

-- INSERT 

	-- Department Records

	INSERT INTO `Dept`
	VALUES(101, 'Inventory');

	INSERT INTO `Dept`
	VALUES(102, 'Sales');

	-- Employee Records
	
	INSERT INTO `Employee`
	VALUES(1, 'A', 101);

	INSERT INTO `Employee`
	VALUES(2, 'B', 102);

-- Select

	SELECT * FROM `Dept`;
	SELECT * FROM `Employee`;

	-- Join

	-- Cartesian product

	SELECT * FROM `Employee`,`Dept`;

	-- Query 

	SELECT * FROM `Employee`, `Dept`
	WHERE `Employee`.`DeptID` = `Dept`.`DeptID`;

	
	-- Query with alias

	SELECT * FROM `Employee` as e, `Dept` as d
	WHERE e.`DeptID` = d.`DeptID`;

	-- Join Query


	SELECT * FROM `Employee` as e
	INNER JOIN `Dept` as d ON (e.`DeptID` = d.`DeptID`);


-- Drop 

	DROP TABLE `Employee`;
	DROP TABLE `Dept`;
