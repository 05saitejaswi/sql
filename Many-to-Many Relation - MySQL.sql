

-- Many to Many Relation

-- Select the Database.

	USE `DemoDB`;

-- Create - 

	CREATE TABLE `Course`(
		`CourseID` INT PRIMARY KEY AUTO_INCREMENT,
		`Name` VARCHAR(50) NOT NULL,
		`Fee` NUMERIC(10, 2) NOT NULL
	); 

	CREATE TABLE `Student`(
		`StudentID` INT PRIMARY KEY AUTO_INCREMENT,
		`FirstName` VARCHAR(50) NOT NULL,
		`LastName`  VARCHAR(50) NOT NULL
	); 

	CREATE TABLE `CourseEnrollments`(
		`CourseID` INT NOT NULL REFERENCES `Course` ,
		`StudentID` INT NOT NULL REFERENCES `Student`
	);

-- Insert - 

	INSERT INTO `Course`(`Name`, `Fee`)
	VALUES('SQL',30);

	INSERT INTO `Course`(`Name`,`Fee`)
	VALUES('DS', 40);

	INSERT INTO `Student`(`FirstName`,`LastName`)
	VALUES('a','a');

	INSERT INTO `Student`(`FirstName`,`LastName`)
	VALUES('b','b');


	INSERT INTO `CourseEnrollments`
	VALUES(1,1);

	INSERT INTO `CourseEnrollments`
	VALUES(1,2);

	INSERT INTO `CourseEnrollments`
	VALUES(2,1);

-- Select - 

	SELECT * FROM `Student`;
	SELECT * FROM `Course`;
	SELECT * FROM `CourseEnrollments`;


-- Drop - 

	DROP TABLE `CourseEnrollments`;
	DROP TABLE `Course`;
	DROP TABLE `Student`;
