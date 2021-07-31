CREATE DATABASE Extra_Assignment;
-- Question 1 --
DROP DATABASE IF EXISTS Trainee;
CREATE TABLE Trainee(
				TrainneID 			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                Fullname 			VARCHAR(50) NOT NULL,
                Birthday 			DATE NOT NULL,
                Gender 				ENUM ('male', 'female', 'unknown') NOT NULL,
                ET_IQ 				TINYINT UNSIGNED CHECK(ET_IQ < 20),
                ET_Gmath  			TINYINT UNSIGNED CHECK(ET_IQ < 20),
                ET_English			TINYINT UNSIGNED CHECK(ET_IQ < 50),
                Training_Class		INT UNSIGNED NOT NULL,
                Evaluation_Notes 	VARCHAR(150)
                );
-- Question 2 --
ALTER TABLE Trainee ADD COLUMN 		VTI_Account	TINYINT UNSIGNED UNIQUE NOT NULL;
-- Exercise 2 -- 
DROP DATABASE IF EXISTS Trainee;
CREATE TABLE Trainee(
				ID 				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
				`Name` 			VARCHAR(50) NOT NULL,
                `Code`			VARCHAR(5) NOT NULL,
                ModifiedDate	DATETIME NOT NULL
                );
-- Exercise 3 --
CREATE TABLE Trainee(
				ID 				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
				`Name` 			VARCHAR(50) NOT NULL,
                Birthday		DATE NOT NULL,
                Gender			BIT,
                IsDeletedFlag 	BIT NOT NULL
                );

                        
