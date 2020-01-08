
-- Insert with Select

-- Select the Database.

	USE `DemoDB`;

-- Create  
    	 
	CREATE TABLE `UserProfile`(
		`ProfileID`    INT,
		`FirstName`	   VARCHAR(50),
		`LastName`     VARCHAR(50),
		`email`        VARCHAR(50)
	);

	CREATE TABLE `Contact`(
		`ContactID`    INT,
		`FirstName`	   VARCHAR(50),
		`LastName`     VARCHAR(50),
		`email`        VARCHAR(50)
	);


-- Insert 
  
  -- Sample data

	INSERT INTO `UserProfile`
	VALUES(1, 'A', 'A', 'a@test.com' );


	INSERT INTO `UserProfile`
	VALUES(2, 'B', 'B', 'b@test.com' );

	INSERT INTO `UserProfile`
	VALUES(3, 'C', 'C', 'c@test.com' );
     

-- Display UserProfiles

	SELECT * FROM `UserProfile`;


-- Create Contacts for all Users 

	INSERT INTO `Contact`
	SELECT * FROM `UserProfile`;

-- Display Contacts

	SELECT * FROM `Contact`;

-- Drop 

	DROP TABLE `Contact`;
	DROP TABLE `UserProfile`;