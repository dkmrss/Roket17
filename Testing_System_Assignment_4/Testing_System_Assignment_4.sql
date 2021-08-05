-- Question 1: Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ
SELECT a.Fullname, d.Department_Name
FROM `Account` AS a
INNER JOIN Department AS d 
ON a.Department_ID = d.Department_ID
;
-- Question 2: Viết lệnh để lấy ra thông tin các account được tạo sau ngày 20/12/2010
SELECT *
FROM `Account`
WHERE Create_Date > '2021-7-1';

-- Question 3: Viết lệnh để lấy ra tất cả các developer
SELECT a.Fullname, p.Position_Name
From `Account` AS a
JOIN Position AS p
ON a.Position_ID = p.Position_ID
WHERE p.Position_Name = 'Dev';

-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
SELECT d.Department_Name
FROM Department AS d 
JOIN `Account` AS a ON d.Department_ID = a.Department_ID
GROUP BY d.Department_ID
HAVING COUNT(a.Department_ID) > 2
;

-- Question 5: Viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều nhất
SELECT q.Content
FROM Exam_Question AS eq
JOIN Question AS q ON eq.Question_ID = q.Question_ID
WHERE eq.Question_ID;

-- Question 6: Thông kê mỗi category Question được sử dụng trong bao nhiêu Question
SELECT		q.Category_ID,count(1)	
FROM		question q 
GROUP BY	q.Category_ID;	

-- Question 7: Thông kê mỗi Question được sử dụng trong bao nhiêu Exam
SELECT 		q.question_id,q.content,count(1)
FROM		question q 
JOIN		Exam_question eq On q.question_id = eq.question_id
GROUP BY	eq.question_id;

-- Question 8: Lấy ra Question có nhiều câu trả lời nhất
SELECT 		a.question_id,q.content
FROM 		question q 
JOIN		Answer	a 
GROUP BY	a.question_id 
ORDER BY	count(a.question_id) DESC
LIMIT 1;

-- Question 9: Thống kê số lượng account trong mỗi group 
SELECT 		group_id,count(1)
FROM		group_account
GROUP BY	Group_ID;


-- Question 10: Tìm chức vụ có ít người nhất
SELECT 		p.*
FROM		`position` p 
JOIN		`account` a ON p.position_id = a.position_id
GROUP BY	a.position_id
ORDER BY	count(a.position_id)
LIMIT 1;


-- Question 11: Thống kê mỗi phòng ban có bao nhiêu dev, test, scrum master, PM
SELECT 		d.department_name,count(1)
FROM		department d 
JOIN		`account` a ON d.department_id = a.department_id
GROUP BY	a.department_id;


-- Question 12: Lấy thông tin chi tiết của câu hỏi bao gồm: thông tin cơ bản của question, loại câu hỏi, ai là người tạo ra câu hỏi, câu trả lời là gì, …
 SELECT			q.*,tq.type_name,cq.Category_name,GROUP_CONCAT(a.content)
 FROM			question q 
 JOIN			Type_question tq ON q.type_id = tq.type_id
 JOIN			Category_Question cq ON q.Category_ID	= cq.Category_ID
 JOIN			Answer a ON q.question_id = a.question_id
 GROUP BY		q.question_id;
 
 
 -- Question 13: Lấy ra số lượng câu hỏi của mỗi loại tự luận hay trắc nghiệm
SELECT		tq.type_name,count(1)
FROM		type_question tq
JOIN		Question q ON tq.type_id = q.type_id 
GROUP BY 	q.type_id
; 

-- Question 14:Lấy ra group không có account nào
SELECT g.Group_ID, g.Group_name
FROM Group_Account AS ga
RIGHT JOIN `Group` AS g ON ga.Group_ID = g.Group_ID
WHERE ga.Group_ID IS NULL
;

-- Question 15:  Lấy ra account không có group nào
SELECT a.Fullname
FROM Group_Account AS ga
RIGHT JOIN `Account` AS a ON ga.Account_ID = a.Account_ID
WHERE ga.Account_ID IS NULL
;

-- Question 16: Lấy ra question không có answer nào
SELECT q.Question_ID, q.Content
FROM Answer AS aw
RIGHT JOIN Question AS q ON aw.Question_ID = q.Question_ID
WHERE aw.Question_ID IS NULL
;

-- ex: Lấy ra tên các account và tên các group của các account đã tham gia vào grp
SELECT a.Fullname, g.Group_name
FROM  Group_Account AS ga
JOIN `Group` AS g ON g.Group_ID = ga.Group_ID
JOIN `Account` AS a ON a.Account_ID = ga.Account_ID;

-- Question 17

SELECT A.Account_ID, a.Fullname, ga.Group_ID
FROM `Group_Account` AS ga
JOIN  `Account` AS a
ON ga.Account_ID = a.Account_ID
WHERE ga.Group_ID = 1

UNION

SELECT A.Account_ID, a.Fullname, ga.Group_ID
FROM `Group_Account` AS ga
JOIN  `Account` AS a
ON ga.Account_ID = a.Account_ID
WHERE ga.Group_ID = 2
;

-- Question 18
SELECT g.Group_Name
FROM `Group_Account` AS ga
JOIN  `Account` AS a
ON ga.Account_ID = a.Account_ID
WHERE ga.Group_ID = 2

UNION ALL 

SELECT	g.group_name
FROM	`Group` g
JOIN	`group_account` ga	ON g.group_id = ga.group_id
GROUP BY ga.group_id
HAVING 	count(ga.group_id) < 7;