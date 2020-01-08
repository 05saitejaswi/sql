

-- Auto Increment Column

-- Select the Database.

	USE `DemoDB`;

-- Create  

	CREATE TABLE `Course` (
		`CourseID` INT PRIMARY KEY AUTO_INCREMENT,
		`Name` VARCHAR(50),
		`Fee` NUMERIC(10,2)
	); 

-- INSERT 

	INSERT INTO `Course`(`Name`, `Fee`)
	VALUES('A', 20);

	INSERT INTO `Course`(`Name`, `Fee`)
	VALUES('B', 30);
	
-- Select

	SELECT * FROM `Course`;

-- Drop 

	DROP TABLE `Course`;
