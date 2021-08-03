-- Question 2 --
SELECT *
FROM department;

-- Question 3 --
SELECT * 
FROM department 
WHERE Department_Name = 'Sale';

-- Question 4
SELECT *
FROM `account`
WHERE length(fullname) = (SELECT MAX(length(fullname)) FROM	`account`);

-- Question 5 --
SELECT *,MAX(length(fullname))
FROM `account`
WHERE department_id = 3;

-- Question 6 --
SELECT Group_name 
FROM `Group` 
WHERE Create_date <= '2021-7-20';

-- Question 7 --
SELECT 		question_ID, count(1)
FROM 		Answer 
GROUP BY  	Question_ID 
HAVING 		COUNT(Answer_ID) >= 3;

-- Question 8 --
SELECT * 
FROM Exam 
WHERE Duration >= 60 
AND Create_Date < '2021-7-21';

-- Question 9 --
SELECT Group_name, Create_date 
FROM `Group` 
ORDER BY Create_date 
DESC LIMIT 5;

-- Question 10 --
SELECT 	COUNT(1) as so_nhan_vien
FROM 	`account`
WHERE 	department_id = 2;

-- Question 11--
SELECT * 
FROM `Account` 
WHERE Fullname 
LIKE 'D%c';

-- Question 12 --
DELETE	
FROM	exam
WHERE Create_Date < 20/12/2019;

-- Question 13 --
DELETE 
FROM	question
WHERE	Content = 'Câu hỏi%';

-- Question 14 --
UPDATE `account`
SET		fullname 	= 'Nguyễn Bá Lộc',
        email 		= 'loc.nguyenba@vti.com.vn'
Where account_id 	= 5;
select * from account;

-- Question 15 --
UPDATE 	Group_Account
SET		group_id = 4
Where 	account_id 	= 5;