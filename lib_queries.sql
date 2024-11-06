create table db_library.usertb(
ISBN varchar(50),
Publisher_name varchar(100),
Publication_no varchar(50),
Book_title varchar(50),
Book_no int,
issue_date date,
issued_to varchar(50),
Phone_no varchar(20),
Email_address varchar(50),
Return_date date,
Overdue int
)

insert into db_library.usertb(ISBN,Publisher_name,Publication_no,Book_title,Book_no,issue_date,issued_to,Phone_no,Email_address,Return_date,Overdue) 
values ('978-0061120084','HarperCollins','1111','To Kill a Mockingbird',1001,'2024-10-01','John Doe','555-1234','john.doe@example.com','2024-10-15',0);

insert into db_library.usertb(ISBN,Publisher_name,Publication_no,Book_title,Book_no,issue_date,issued_to,Phone_no,Email_address,Return_date,Overdue) 
values ('978-0451524935','Signet Classics','1112','1984',1002,'2024-09-25','Jane Smith','555-5678','jane.smith@example.com','2024-10-09',2);

insert into db_library.usertb(ISBN,Publisher_name,Publication_no,Book_title,Book_no,issue_date,issued_to,Phone_no,Email_address,Return_date,Overdue) 
values ('978-0743273565','Scribner','1113','The Great Gatsby',1003,'2024-10-05','Alex Brown','555-8765','alex.brown@example.com','2024-10-19',0);

insert into db_library.usertb(ISBN,Publisher_name,Publication_no,Book_title,Book_no,issue_date,issued_to,Phone_no,Email_address,Return_date,Overdue) 
values ('978-1503280786','CreateSpace','1114','Moby-Dick',1004,'2024-09-28','Emily White','555-2345','emily.white@example.com','2024-10-12',1);

insert into db_library.usertb(ISBN,Publisher_name,Publication_no,Book_title,Book_no,issue_date,issued_to,Phone_no,Email_address,Return_date,Overdue) 
values ('978-1503290563','CreateSpace','1115','Pride and Prejudice',1005,'2024-09-20','Michael Green','555-6785','michael.green@example.com','2024-10-04',3);

insert into db_library.usertb(ISBN,Publisher_name,Publication_no,Book_title,Book_no,issue_date,issued_to,Phone_no,Email_address,Return_date,Overdue) 
values ('978-0060850524','Harper Perennial Modern Classics','1117','Brave New World',1007,'2024-10-10','Brian Gray','555-9876','brian.gray@example.com','2024-10-24',0);

SELECT * from db_library.usertb;

UPDATE db_library.usertb
SET issue_date='2024-09-29', Return_date='2024-10-14', Overdue=0
WHERE issued_to='Emily White';

ALTER table db_library.usertb
CHANGE Return_date Submission_date date;

SELECT issued_to, Phone_no, Email_address
FROM db_library.usertb
ORDER BY Overdue ASC;

CREATE TABLE db_library.overdues (
overdue_id INT PRIMARY KEY,
email VARCHAR(50), -- links to users table
overdue_amount DECIMAL(10,2)
);

INSERT INTO db_library.overdues (overdue_id,email,overdue_amount) 
VALUES (1,'jane.smith@example.com',200.00);

INSERT INTO db_library.overdues (overdue_id,email,overdue_amount) 
VALUES (2,'emily.white@example.com',100.00);

INSERT INTO db_library.overdues (overdue_id,email,overdue_amount) 
VALUES (3,'michael.green@example.com',300.00);

INSERT INTO db_library.overdues (overdue_id,email,overdue_amount) 
VALUES (4,'unknown@example.com',500.00);

use db_library;

SELECT u.issued_to, u.Phone_no, u.Email_address, d.overdue_amount
FROM usertb u
INNER JOIN overdues d ON u.Email_address = d.email;

SELECT u.issued_to, u.Phone_no, u.Email_address, d.overdue_amount
FROM usertb u
LEFT JOIN overdues d ON u.Email_address = d.email;

SELECT u.issued_to, u.Phone_no, u.Email_address, d.overdue_amount
FROM usertb u
RIGHT JOIN overdues d ON u.Email_address = d.email;


SELECT u.issued_to, u.Phone_no, u.Email_address, d.overdue_amount
FROM usertb u
LEFT JOIN overdues d ON u.Email_address = d.email
UNION
SELECT u.issued_to, u.Phone_no, u.Email_address, d.overdue_amount
FROM usertb u
RIGHT JOIN overdues d ON u.Email_address = d.email;

DROP TABLE overdues;












































