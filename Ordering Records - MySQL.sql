
-- Ordering Records

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
	VALUES('XML', 10);

	INSERT INTO `Course`(`Name`, `Price`)
	VALUES('Java', 40);

	INSERT INTO `Course`(`Name`, `Price`)
	VALUES('SQL', 40);

	INSERT INTO `Course`(`Name`, `Price`)
	VALUES('C', 20);

	INSERT INTO `Course`(`Name`, `Price`)
	VALUES('PHP', 25);
    
    INSERT INTO `Course`(`Name`, `Price`)
	VALUES('C++', 30);
	
-- Select


	-- Display course information in the ascending order of the price.

	SELECT * FROM `Course`
	ORDER BY `Price`;


	-- Display course information in the descending order of the price.

	SELECT * FROM `Course`
	ORDER BY `Price` DESC;
	
    -- OR
    
    SELECT * FROM `Course`
	ORDER BY 3 DESC;
	
	-- Display Course Name, Price and DiscountedPrice(75% of existing price) and arrange the result 
	-- in the ascending order of the discounted price.
	
	SELECT `Name`, `Price`, `Price` * 0.75 AS `DiscountedPrice` FROM `Course`
    WHERE `Price` > 25
	ORDER BY 3;

-- Drop 

	DROP TABLE `Course`;
