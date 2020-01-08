
-- Update

-- Select the Database.

	USE `DemoDB`;

-- Create  

	CREATE TABLE `Course` (
		`CourseID` INT PRIMARY KEY AUTO_INCREMENT,
		`Name`   VARCHAR(50),
		`Price` NUMERIC(10,2)
	); 

-- INSERT 

	INSERT INTO `Course`(`Name`, `Price`)
	VALUES('Java', 40);

	INSERT INTO `Course`(`Name`, `Price`)
	VALUES('SQL', 40);

	INSERT INTO `Course`(`Name`, `Price`)
	VALUES('C', 20);
    
    INSERT INTO `Course`(`Name`, `Price`)
	VALUES('C++', 30);
	
-- Select

	SELECT * FROM `Course`;
	
-- Update

	-- Update course name for 'C' to 'C Language' and price to $50.

	-- Needed for MySQL because you are updating record with out using ID column.
	SET SQL_SAFE_UPDATES = 0;

	Update `Course`
	SET `Name` = 'C Language' , `Price` = 50
	WHERE `Name` = 'C';
	
	-- Increase course price by 5% for all courses.

	Update `Course`
	SET `Price` = `Price` * 1.05;
	 

-- Drop 

	DROP TABLE `Course`;
