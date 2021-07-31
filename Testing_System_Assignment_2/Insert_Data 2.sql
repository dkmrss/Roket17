INSERT INTO Department		(Department_Name) 
VALUES 						('Sale'),
							('Marketing'),
							('Tai Chinh'),
							('An Ninh'),
							('Ky Thuat');
INSERT INTO `Position`		(Position_Name)
VALUES						('Dev'),
							('Test'),
							('Scrum Master'),
							('PM');
INSERT INTO `Account`		(Email, 			Username, 	Fullname, 		Department_ID, 	Position_ID, 	Create_Date)
VALUES						('a.bt@gmail.com', 	'bta', 		'Bui The A', 	1, 				2, 				'2021-7-31'),
							('b.nv@gmail.com', 	'nvb', 		'Nguyen Van B', 3, 				4, 				'2021-7-31'),
							('c.dt@gmail.com', 	'dtc', 		'Doan Thi C', 	2, 				1, 				'2021-7-31'),
							('d.lt@gmail.com', 	'ltd', 		'Le Thanh D', 	5, 				3, 				'2021-7-31'),
							('e.nt@gmail.com', 	'nte', 		'Nguyen Thu E', 5, 				2, 				'2021-7-31'),
							('f.ht@gmail.com', 	'htf', 		'Ha Thien F', 	3, 				1, 				'2021-7-31'),
							('g.tt@gmail.com', 	'ttg', 		'Tran Thang G', 4, 				2, 				'2021-7-31'),
							('h.dt@gmail.com', 	'dth', 		'Dinh Tuan H', 	1, 				1, 				'2021-7-31'),
							('i.nb@gmail.com', 	'nbi', 		'Nguyen Bao I', 3, 				3, 				'2021-7-31'),
							('j.d@gmail.com', 	'dj', 		'Daniel J', 	1, 				1, 				'2021-7-31');
INSERT INTO `Group`			(Group_name,	Creator_ID,	Create_Date)
VALUES						('group1', 		3,			'2021-8-8'),
							('group2', 		1,			'2021-8-8'),
							('group3', 		5,			'2021-8-8'),
							('group4', 		7,			'2021-8-8');
INSERT INTO Group_Account	(Group_ID,	Account_ID,	Join_Date)
VALUES						(1,			3,			'2021-8-8'),
							(1,			4,			'2021-8-9'),
                            (2,			1,			'2021-8-9'),
                            (2,			2,			'2021-8-9'),
                            (3,			5,			'2021-8-9'),
                            (3,			6,			'2021-8-9'),
                            (3,			7,			'2021-8-9'),
                            (4,			8,			'2021-8-9'),
                            (4,			9,			'2021-8-9'),
                            (4,			10,			'2021-8-9');

INSERT INTO Type_Question	(Type_Name)
VALUES						('Essay'),
							('Multiple-Choice');
INSERT INTO	Category_Question(Category_Name)
VALUE						('Java'	),
							('.NET'),
							('SQL'),
							('Postman'),
							('Ruby');
                                 
INSERT INTO	Question		(Content,	Category_ID,	Type_ID,	Creator_ID,	Create_Date	)
VALUE						('content1',1,			1,		1,			'2021-7-20'	),
							('content2',2,			2,		2,			'2021-7-20'	),
                            ('content3',3,			1,		3,			'2021-7-20'	),
                            ('content4',4,			2,		4,			'2021-7-20'	),
                            ('content5',5,			1,		5,			'2021-7-20'	),
                            ('content6',1,			2,		6,			'2021-7-20'	);
INSERT INTO	Answer			(Content,	Question_ID,	isCorrect)
VALUE						('contentA',1,				b'1'),
							('contentB',1,				b'0'),
                            ('contentC',2,				b'1'),
                            ('contentD',2,				b'0'),
                            ('contentE',3,				b'1'),
                            ('contentF',3,				b'0'),
                            ('contentG',4,				b'1'),
                            ('contentH',4,				b'0'),
                            ('contentI',5,				b'0'),
                            ('contentJ',5,				b'1'),
                            ('contentK',6,				b'1'),
                            ('contentL',6,				b'0');
INSERT INTO	Exam			(`Code`,	Title,		Category_ID,	Duration,	Creator_ID,	Create_Date)
VALUE						(101,		'Title1',	1,				45,			1,			'2021-7-25'	),
							(102,		'Title2',	2,				60,			2,			'2021-7-25'	),
                            (103,		'Title3',	3,				90,			3,			'2021-7-25'	),
                            (104,		'Title4',	4, 				120,		4,			'2021-7-25'	),
                            (105,		'Title5',	5,				45,			5,			'2021-7-25'	),
                            (106,		'Title6',	6,				60,			6,			'2021-7-25'	);						
INSERT INTO	Exam_Question	(Exam_ID,	Question_ID	)
VALUE						(1,			1),
							(1,			3),
							(2,			2),
                            (2,			4),
                            (3,			3),
                            (3,			5),
                            (4,			4),
                            (4,			6),
                            (5,			5),
                            (5,			7),
                            (6,			6),
                            (6,			1);
select * from acaccountaccountcount;

                            

							
							
