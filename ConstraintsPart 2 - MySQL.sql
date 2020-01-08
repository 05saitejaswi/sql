

-- Constraints Part 2 

-- Select the Database.

	USE `DemoDB`;

-- Create  

	CREATE TABLE `Dept` (
		`DeptID`   INT PRIMARY KEY,
		`Name`     VARCHAR(50),
		`Location` VARCHAR(50)
	); 

	CREATE TABLE `Employee`(
		`EmpID` 	INT PRIMARY KEY,
		`FirstName` VARCHAR(50),
		`LastName`  VARCHAR(50),
		`DeptID` 	INT REFERENCES Dept,
		`Salary` 	NUMERIC(10,2)
	); 

-- INSERT 

	-- Department Records

	INSERT INTO `Dept`
	VALUES(101, 'Inventory', 'Loc1');

	INSERT INTO `Dept`
	VALUES(102, 'Sales', 'Loc2');

	-- Employee Records
	
	INSERT INTO `Employee`
	VALUES(1, 'A','A', 101, 11000);

	INSERT INTO `Employee`
	VALUES(2, 'B','B', 102, 12000);

	INSERT INTO `Employee`
	VALUES(3, 'C','C', NULL, 21000);

	INSERT INTO `Employee`
	VALUES(4, 'D','D', 102, 22000);

-- Select

	SELECT * FROM `Dept`;
	SELECT * FROM `Employee`;


-- Drop 

	DROP TABLE `Employee`;
	DROP TABLE `Dept`;
