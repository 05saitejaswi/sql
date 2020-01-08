

-- Constraints Part 1

-- Select the Database.

	USE `DemoDB`;

-- Create  

	CREATE TABLE `UserProfile` (
		`ProfileID`       INT PRIMARY KEY,
		`FirstName`	      VARCHAR(50) NOT NULL,
		`LastName`        VARCHAR(50) NOT NULL,
		`Email`           VARCHAR(50) UNIQUE NOT NULL,
		`Rank`		      INT DEFAULT 0 
		                    NOT NULL 
		                    CHECK (Rank >= 0)
	);

-- Insert

	INSERT INTO `UserProfile`
	VALUES(1, 'A', 'A' , 'a@test.com', 0); -- Success


	INSERT INTO `UserProfile`
	VALUES(1, 'B', 'B' , 'b@test.com', 0); -- Fails; Duplicate Primary Key value


	INSERT INTO `UserProfile`
	VALUES(2, 'B', 'B' , 'b@test.com', 0); -- Success 

	INSERT INTO `UserProfile`
	VALUES(3, 'C', NULL , 'c@test.com', 0); -- Fails; Can not insert into into NOT NULL column LastName

	INSERT INTO `UserProfile`
	VALUES(3, 'C', 'C', 'c@test.com', 0); -- Success 

	INSERT INTO `UserProfile`
	VALUES(4, 'D', 'D', 'c@test.com', 0); -- Fails; Can not insert duplicate value for UNIQUE column Email.


	INSERT INTO `UserProfile`
	VALUES(4, 'D', 'D', 'd@test.com', 0); -- Success

	
	INSERT INTO `UserProfile`
	VALUES(5, 'E', 'E', 'e@test.com', -1); -- Fails; Rank should be greater than or equal to zero.
										   -- Note : Might go through in MySql.

-- Select

	SELECT * FROM `UserProfile`;


-- Drop 

	DROP TABLE `UserProfile`;

