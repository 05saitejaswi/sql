
-- Group By

-- Select the Database.

	USE `DemoDB`;

-- Create  

	CREATE TABLE `Student` (
		`StudentID` INT PRIMARY KEY AUTO_INCREMENT,
		`Name`      VARCHAR(50),
		`Course`    VARCHAR(10),
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

	-- Display the Total Score, Average Score, Minimum, Maximum score for each group.

	SELECT
		`Course`,
		SUM(`Score`) AS `Total Score`,
		AVG(`Score`) AS `Average`,
		MIN(`Score`) AS `Minimum`,
		MAX(`Score`) AS `Maximum`
	FROM `Student`
	GROUP BY `Course`;
    
-- Drop 

	DROP TABLE `Student`;
