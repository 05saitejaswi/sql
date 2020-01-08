
-- Index

-- Select the Database.

	USE `DemoDB`;

-- Create 
    	 
	CREATE TABLE `UserProfile`(
		`UserProfileID`   INT PRIMARY KEY AUTO_INCREMENT,
        `Username`  	  VARCHAR(50) NOT NULL,
		`CompanyCode`	  VARCHAR(50) NOT NULL,
		`Email`	      	  VARCHAR(50) NOT NULL,
		`CreatedDTTM`	  DATETIME NOT NULL
	);
    
-- Index creation.
    
    CREATE INDEX `idx_usercompany` ON `UserProfile`(`Username`,`CompanyCode`);
    
    CREATE UNIQUE INDEX `idx_email` ON `UserProfile`(`Email`);

-- Inserts

    -- Success
    INSERT INTO `UserProfile`(`Username`, `CompanyCode`, `Email`, `CreatedDTTM`)
    VALUES('A','COMPANY1', 'a@test.com', NOW() );

	-- Fails; duplicate entry in idx_email.
    INSERT INTO `UserProfile`(`Username`, `CompanyCode`, `Email`, `CreatedDTTM`)
    VALUES('A','COMPANY2', 'a@test.com', NOW() );

-- Drop index

	DROP INDEX `idx_usercompany` ON `UserProfile`;
    DROP INDEX `idx_email` ON `UserProfile`;

-- Drop table

    DROP TABLE `UserProfile`;