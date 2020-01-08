
-- Filtering Records

-- Operators
--    = , <> , < , > , <= , >= 
--    Between
--    Like
--    In  
--    Is 

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

	INSERT INTO `Course`(`Name`, `Price`)
	VALUES('Basic', NULL);
	
-- Select

	-- List Course Information.
    
	SELECT * FROM `Course`;


	-- Filtering Records


	-- 1. Display 'C' Course Information.
 
		SELECT * FROM `Course`
		WHERE `Name` = 'C';


	 -- 2. Display all courses whose price is greater then or equal to $20.
	 
		SELECT * FROM `Course`
		WHERE `Price` >= 20;



	 -- 3. Display all courses whose price is between $20 and $30 .
	 
		SELECT * FROM `Course`
		WHERE `Price` >= 20 AND `Price` <= 30;

		-- OR
		
		SELECT * FROM `Course`
		WHERE `Price` BETWEEN 20 AND 30;




	 -- 4. Display all courses whose price is either $20 or $30 .
	 
		SELECT * FROM `Course`
		WHERE `Price` = 20 OR `Price` = 30;

		-- OR
		
		SELECT * FROM `Course`
		WHERE `Price` IN (20, 30);



	 -- 5. Display all courses except 'C'
	 
		SELECT * FROM `Course`
		WHERE `Name` <> 'C';

		-- OR
		
		SELECT * FROM `Course`
		WHERE `Name` != 'C';

		-- OR
		
		SELECT * FROM `Course`
		WHERE `Name` NOT IN ('C');



	 -- 6. Display all courses whose name starts with 'C'
	 
		SELECT * FROM `Course`
		WHERE `Name` LIKE 'C%';



	 -- 7. Display all courses whose name ends with 'C'
	 
		SELECT * FROM `Course`
		WHERE `Name` LIKE '%C';



	 -- 8. Display all courses whose contains 'C'
	 
		SELECT * FROM `Course`
		WHERE `Name` LIKE '%C%';



	-- 9. Display all courses whose second letter is 'a'

		SELECT * FROM `Course`
		WHERE `Name` LIKE '_a%';

	-- 10. Display the courses whose price is null.

		SELECT * FROM `Course`
		WHERE `Price` IS NULL;


-- Drop 

	DROP TABLE `Course`;
