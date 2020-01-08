
-- Transactions

-- Select the Database.

	USE `DemoDB`;

-- Create 
    	 
	CREATE TABLE `Account`(
		`AccountID`  	INT PRIMARY KEY AUTO_INCREMENT,
        `Name`	  		VARCHAR(50)   NOT NULL,
		`Balance`	  	NUMERIC(10,2) NOT NULL
	);
    
-- Insert test data
    
    INSERT INTO `Account`(`Name`, `Balance`)
    VALUES('A', 2000 );
    
    INSERT INTO `Account`(`Name`, `Balance`)
    VALUES('B', 2000 );


	SELECT * FROM `Account`;

-- Transactions 

	-- Transfer amount from account 1 to 2.
	START TRANSACTION ; -- OR BEGIN;
	
		UPDATE `Account` 
        SET `Balance` = `Balance` - 500 
        WHERE `AccountID` = 1;
        
        UPDATE `Account` 
        SET `Balance` = `Balance` + 500 
        WHERE `AccountID` = 2;
        
	ROLLBACK;
		
        -- OR
        
	COMMIT;
    
    
    
    
    SELECT * FROM `Account`;

-- Transactions with save point

	START TRANSACTION ;
	
	SAVEPOINT `point1`;
        
        INSERT INTO `Account`(`Name`, `Balance`)
		VALUES('C', 2000 );
        
	SAVEPOINT `point2`;

		UPDATE `Account` 
        SET `Balance` = `Balance` - 500 
        WHERE `AccountID` = 1;
        
        UPDATE `Account` 
        SET `Balance` = `Balance` + 500 
        WHERE `AccountID` = 2;
        
	ROLLBACK TO SAVEPOINT `point2`;
		
        -- OR
        
	COMMIT;
		
		



-- Drop 

    DROP TABLE `Account`;