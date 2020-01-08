
-- Views

-- Select the Database.

	USE `DemoDB`;

-- Create 
    	 
	CREATE TABLE `UserProfile`(
		`UserProfileID`   INT PRIMARY KEY AUTO_INCREMENT,
        `Username`  	  VARCHAR(50) NOT NULL,
		`CompanyCode`	  VARCHAR(50) NOT NULL,
		`Email`	      	  VARCHAR(50) NOT NULL,
        `Active` 		  BIT NOT NULL DEFAULT 1,
		`CreatedDTTM`	  DATETIME NOT NULL
	);
    
-- Insert test data
    
    INSERT INTO `UserProfile`(`Username`, `CompanyCode`, `Email`, `CreatedDTTM`)
    VALUES('A','COMPANY1', 'a@test.com', NOW() );

    INSERT INTO `UserProfile`(`Username`, `CompanyCode`, `Email`, `CreatedDTTM`)
    VALUES('A','COMPANY2', 'a@test.com', NOW() );
    
    INSERT INTO `UserProfile`(`Username`, `CompanyCode`, `Email`, `Active`, `CreatedDTTM`)
    VALUES('B','COMPANY2', 'b@test.com', 0, NOW() );
   
	INSERT INTO `UserProfile`(`Username`, `CompanyCode`, `Email`, `Active`, `CreatedDTTM`)
    VALUES('C','COMPANY2', 'c@test.com', 0, NOW() );
   
-- Views

	CREATE OR REPLACE VIEW `ActiveUsersView`
    AS 
    SELECT * FROM `UserProfile`
    WHERE `Active` = 1;
    
    
    CREATE OR REPLACE VIEW `InactiveUsersView`
    AS 
    SELECT * FROM `UserProfile`
    WHERE `Active` = 0;
    
    
-- Query the views

	SELECT * FROM `ActiveUsersView`;
    
    SELECT * FROM `InactiveUsersView`;
	

-- Drop the views

	DROP VIEW `ActiveUsersView`;
    DROP VIEW `InactiveUsersView`;

-- Drop table

    DROP TABLE `UserProfile`;