
-- Insert

-- Select the Database.

	USE `DemoDB`;

-- Create  
    	 
	CREATE TABLE `Employee`(
		`EmpID`		    INT,
		`FirstName`	    VARCHAR(50),
		`LastName`      VARCHAR(50),
		`Salary`        NUMERIC(20,2),
		`CreatedDTTM`   DATETIME DEFAULT NOW()
	);

-- Insert 

  
  -- Providing values for all the columns 

	INSERT INTO `Employee`
	VALUES(1, 'A', 'A', 1000, NOW() );

  -- Providing values for specific columns

	INSERT INTO `Employee`(`EmpID`, `FirstName`, `LastName`, `Salary`)
	VALUES(2, 'B', 'B', 1000);

	INSERT INTO `Employee`(`EmpID`, `FirstName`, `Salary`)
	VALUES(3, 'C', 1000);
   
	INSERT INTO `Employee`(`EmpID`, `FirstName`, `LastName`, `Salary`)
	VALUES(4, 'D', NULL, 1000);
   

-- Display Employee information

	SELECT * FROM `Employee`;

-- Drop 

	DROP TABLE `Employee`;