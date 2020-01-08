
-- Alter table

-- Select the Database.

	USE `DemoDB`;

-- Create 
    	 
	CREATE TABLE `UserProfile`(
		`UserProfileID`   INT PRIMARY KEY AUTO_INCREMENT,
        `Username`  	  VARCHAR(50) NOT NULL,
		`CompanyCode`	  VARCHAR(50) NOT NULL,
		`Email`	      	  VARCHAR(50) NOT NULL,
		`CreatedDTTM`	  DATETIME NOT NULL,
        CONSTRAINT unq_userprofile_usercompany  UNIQUE(`UserName`, `CompanyCode`),
        CONSTRAINT unq_userprofile_emailcompany UNIQUE(`CompanyCode`, `Email`)
	);
	
-- Test data

    INSERT INTO `UserProfile`(`Username`, `CompanyCode`, `Email`, `CreatedDTTM`)
    VALUES('A','C1', 'a@test.com', NOW() );

    INSERT INTO `UserProfile`(`Username`, `CompanyCode`, `Email`, `CreatedDTTM`)
    VALUES('A','C2', 'a@test.com', NOW() );
    
	SELECT * FROM `UserProfile`;
    
    DESC `UserProfile`;
    

-- Alter table

	-- Adding column
		
        ALTER TABLE `UserProfile`
        ADD COLUMN `Active` BIT NOT NULL;
    
    -- Modifying column
    
		ALTER TABLE `UserProfile`
        MODIFY COLUMN `Email` VARCHAR(150) NOT NULL;
    
    -- Deleting column
    
		ALTER TABLE `UserProfile`
        DROP COLUMN `Active`;

    
-- Drop table 

	DROP TABLE `UserProfile`;