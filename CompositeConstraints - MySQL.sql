
-- Constraints on Multiple Columns

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
	
    -- Success
    INSERT INTO `UserProfile`(`Username`, `CompanyCode`, `Email`, `CreatedDTTM`)
    VALUES('A','COMPANY1', 'a@test.com', NOW() );

	-- Success; because its a different company.
    INSERT INTO `UserProfile`(`Username`, `CompanyCode`, `Email`, `CreatedDTTM`)
    VALUES('A','COMPANY2', 'a@test.com', NOW() );
    
    -- Fails; because ('A','COMPANY1') already exists in the table.
    INSERT INTO `UserProfile`(`Username`, `CompanyCode`, `Email`, `CreatedDTTM`)
    VALUES('A','COMPANY1', 'x@test.com', NOW() );
    
    -- Fails; because ('COMPANY1','a@test.com') already exists in the table.
    INSERT INTO `UserProfile`(`Username`, `CompanyCode`, `Email`, `CreatedDTTM`)
    VALUES('B','COMPANY1', 'a@test.com', NOW() );
    
    
    DROP TABLE `UserProfile`;
              