DROP DATABASE IF EXISTS Extra_Assignment_4;
CREATE DATABASE Extra_Assignment_4;
USE Extra_Assignment_4;

DROP DATABASE IF EXISTS Department;
CREATE TABLE Department(
	Department_Number 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Department_Name 			VARCHAR(50) UNIQUE KEY NOT NULL
    );
-- Employee_Table (Employee_Number, Employee_Name, Department_Number)

DROP DATABASE IF EXISTS Employee_Table;
CREATE TABLE Employee_Table(
	Employee_Number				TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Employee_Name				VARCHAR(50) UNIQUE KEY NOT NULL,
    Department_Number			TINYINT UNSIGNED NOT NULL REFERENCES Department
    );

-- Employee_Skill_Table (Employee_Number, Skill_Code, Date Registered)

DROP DATABASE IF EXISTS Employee_Skill_Table;
CREATE TABLE Employee_Skill_Table(
	Employee_Number 			TINYINT UNSIGNED NOT NULL REFERENCES Employee_Table,
    Skill_Code					VARCHAR(50) NOT NULL,
    Date_Registered				DATE
    );
    

-- Question 2: Thêm ít nhất 10 bản ghi vào table
INSERT INTO Department				(Department_Name) 
VALUES 								('Sale'),
									('Marketing'),
									('Tai Chinh'),
									('An Ninh'),
									('Ky Thuat'),
									('Cong Vu'),
									('Nghien Cuu'),
									('Xay Dung'),
									('Kien Truc'),
									('Cong Nghe');

INSERT INTO Employee_Table			(Employee_Name, Department_Number) 
VALUES 								('Bui The Anh', 5),
									('Nguyen Do Duy Anh', 1),
									('Le Khac Chau', 2),
									('Hoang Huy Du', 3),
									('Dam Khac Khanh Duy',1),
									('Nguyen Duc Duy',2),
									('Vu Duc Duy', 4),
									('Nguyen Tuan Duong',4),
									('Nguyen Khuong Duc',4),
									('Duong Ngoc Ha',1),
									('Ha Duc Hai',5),
									('Dinh Tuan Hoang',6),
									('Nguyen Duc Hung',7),
									('Duong Thi Thu Huyen',7),
									('Nguyen Trong Nhat Minh',8),
									('Pham Ba Khuong',9),
									('Nguyen Quoc Thinh',9),
									('Pham Toan Thang',10),
									('Nguyen Thanh Vinh',10),
									('Nguyen Tuan Vinh',10);
	
INSERT INTO Employee_Skill_Table	(Employee_Number,	Skill_Code	, 	Date_Registered	)
VALUES								(1				,	'Java'		,	'2020-10-2'		),
									(2				,	'C++'		,	'2020-12-12'	),
                                    (3				,	'HTML'		,	'2020-10-12'	),
                                    (4				,	'Java'		,	'2020-12-1'		),
                                    (5				,	'C#'		,	'2020-12-12'	),
                                    (6				,	'HTML'		,	'2020-12-12'	),
                                    (7				,	'Ruby'		,	'2020-12-12'	),
                                    (8				,	'Java'		,	'2020-12-12'	),
                                    (9				,	'Java'		,	'2020-12-12'	),
                                    (10				,	'C++'		,	'2020-11-30'	),
                                    (11				,	'C++'		,	'2020-10-22'	),
                                    (12				,	'C++'		,	'2020-12-15'	),
                                    (13				,	'HTML'		,	'2020-12-13'	),
                                    (14				,	'Python'	,	'2020-12-12'	),
                                    (15				,	'Python'	,	'2020-11-12'	),
                                    (16				,	'C++'		,	'2020-10-12'	),
                                    (17				,	'Java'		,	'2020-12-2'		),
                                    (18				,	'C#'		,	'2020-12-1'		),
                                    (19				,	'C#'		,	'2020-10-2'		),
                                    (20				,	'Java'		,	'2020-10-1'		),
                                    (1				,	'HTML'		,	'2020-12-13'	),
                                    (1				,	'C++'		,	'2020-9-12'		),
                                    (1				,	'JSS'		,	'2020-12-12'	),
                                    (5				,	'Java'		,	'2020-12-12'	),
                                    (3				,	'C++'		,	'2020-12-12'	),
                                    (4				,	'HTML'		,	'2020-12-16'	),
                                    (12				,	'Python'	,	'2020-12-12'	);

-- Question 3: Viết lệnh để lấy ra danh sách nhân viên (name) có skill Java
SELECT 		et.Employee_Name
FROM 		Employee_Skill_Table AS est
JOIN		Employee_Table AS et
ON 			est.Employee_Number = et.Employee_Number
WHERE 		est.Skill_Code = 'Java';

-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
SELECT 		d.Department_Name, COUNT(et.Department_Number)
FROM 		Department AS d
JOIN 		Employee_Table AS et	
ON 			d.Department_Number = et.Department_Number
GROUP BY 	et.Department_Number
HAVING 		COUNT(et.Department_Number) > 2
;

-- Question 5: Viết lệnh để lấy ra danh sách nhân viên của mỗi văn phòng ban
SELECT 		d.Department_Name, et.Employee_Name
FROM 		Department AS d
LEFT JOIN 	Employee_Table AS et 
ON 			d.Department_Number = et.Department_Number;

-- Question 6: Viết lệnh để lấy ra danh sách nhân viên có > 1 skills
SELECT 		et.Employee_Name, COUNT(est.Skill_Code)
FROM 		Employee_Skill_Table AS est
JOIN		Employee_Table AS et
ON 			est.Employee_Number = et.Employee_Number
GROUP BY 	est.employee_Number
HAVING 		COUNT(est.skill_Code) > 1;
;
