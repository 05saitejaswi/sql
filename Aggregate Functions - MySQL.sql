
-- Aggregate functions

-- Select the Database.

	USE `DemoDB`;

-- Create  

	CREATE TABLE `Student` (
		`StudentID` INT PRIMARY KEY AUTO_INCREMENT,
		`Name`      VARCHAR(50),
		`Course`     VARCHAR(10),
		`Score`     NUMERIC(5,2)
	); 

-- INSERT 

	INSERT INTO `Student`(`Name`, `Course`, `Score`)
	VALUES('A', 'CS', 80);

	INSERT INTO `Student`(`Name`, `Course`, `Score`)
	VALUES('B', 'CS', 60);

	INSERT INTO `Student`(`Name`, `Course`, `Score`)
	VALUES('C', 'IT', 70);

	INSERT INTO `Student`(`Name`, `Course`, `Score`)
	VALUES('D', 'IT', 85);

	INSERT INTO `Student`(`Name`, `Course`, `Score`)
	VALUES('E', 'ECE', 88);


-- Select

	SELECT * FROM `Student`;


	-- Display the Total Score

	SELECT SUM(`Score`) AS `Total` FROM `Student`;
	
    -- Display the minimum score
    
    SELECT MIN(`Score`) AS `Minimum` FROM `Student`;
	
    -- Display the maximum score
    
    SELECT MAX(`Score`) AS `Maximum` FROM `Student`;
	
    -- Display the average score
    
    SELECT AVG(`Score`) AS `Average` FROM `Student`;
	
    -- Display the number of students
    
    SELECT COUNT(*) AS `TotalStudents` FROM `Student`;
	
    
-- Drop 

	DROP TABLE `Student`;
