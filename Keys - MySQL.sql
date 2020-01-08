
-- Keys

-- Select the Database.

	USE `DemoDB`;

-- Create 
    	 
	CREATE TABLE `Account`(
		`AccountID`   	  INT PRIMARY KEY AUTO_INCREMENT,
        `AcctNum`  		  VARCHAR(50) UNIQUE NOT NULL,
		`Name`	 		  VARCHAR(50) NOT NULL,
		`Email`	      	  VARCHAR(50) UNIQUE NOT NULL,
		`CreatedDTTM`	  DATETIME NOT NULL
	);
	
    INSERT INTO `Account`(`AcctNum`, `Name`, `Email`, `CreatedDTTM`)
    VALUES('A100','Sagar','sagar@test.com', NOW() );
    
	INSERT INTO `Account`(`AcctNum`, `Name`, `Email`, `CreatedDTTM`)
    VALUES('A101','John','john@test.com', NOW() );
    
	INSERT INTO `Account`(`AcctNum`, `Name`, `Email`, `CreatedDTTM`)
    VALUES('A102','Marsh','marsh@test.com', NOW() );
    
    SELECT * FROM `Account`;
    
-- Keys

	-- Candidate keys
    
		-- AccountID -- Surrogate Key - It has no business meaning but acts as a key.
		-- AcctNum
        -- Email
    
    -- Out of those candidate keys we will select one primary; which is primary key.
		
    
-- Drop table 

	DROP TABLE `Account`;