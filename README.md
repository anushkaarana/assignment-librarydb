# SQl Assignment- library database
## Creating a library database and performing various queries
- ***Create Database (CREATE & USE query)***   
  <p>CREATE DATABASE db_library;  <br>
  USE db_library;  <br>
  create table db_library.usertb(  <br>
  ISBN varchar(50),  <br>
  Publisher_name varchar(100),  <br>
  Publication_no varchar(50), <br> 
  Book_title varchar(50),  <br>
  Book_no int,<br>  
  issue_date date,  <br>
  issued_to varchar(50),  <br>
  Phone_no varchar(20),<br>  
  Email_address varchar(50), <br> 
  Return_date date, <br> 
  Overdue int <br> 
  ) </p>

  ***Output:***
  ![screenshot of database creation output.](https://github.com/anushkaarana/assignment-librarydb/blob/main/output/1.png)

- ***INSERT Query***
  <p>insert into db_library.usertb(ISBN,Publisher_name,Publication_no,Book_title,Book_no,issue_date,issued_to,Phone_no,Email_address,Return_date,Overdue)  <br>
  values ('978-0061120084','HarperCollins','1111','To Kill a Mockingbird',1001,'2024-10-01','John Doe','555-1234','john.doe@example.com','2024-10-15',0); </p> 

  <p>insert into db_library.usertb(ISBN,Publisher_name,Publication_no,Book_title,Book_no,issue_date,issued_to,Phone_no,Email_address,Return_date,Overdue) <br>
  values ('978-0451524935','Signet Classics','1112','1984',1002,'2024-09-25','Jane Smith','555-5678','jane.smith@example.com','2024-10-09',2);</p>

  <p>insert into db_library.usertb(ISBN,Publisher_name,Publication_no,Book_title,Book_no,issue_date,issued_to,Phone_no,Email_address,Return_date,Overdue) <br>
  values ('978-0743273565','Scribner','1113','The Great Gatsby',1003,'2024-10-05','Alex Brown','555-8765','alex.brown@example.com','2024-10-19',0);</p>

  <p>insert into db_library.usertb(ISBN,Publisher_name,Publication_no,Book_title,Book_no,issue_date,issued_to,Phone_no,Email_address,Return_date,Overdue) <br>
  values ('978-1503280786','CreateSpace','1114','Moby-Dick',1004,'2024-09-28','Emily White','555-2345','emily.white@example.com','2024-10-12',1);</p>

  <p>insert into db_library.usertb(ISBN,Publisher_name,Publication_no,Book_title,Book_no,issue_date,issued_to,Phone_no,Email_address,Return_date,Overdue) <br>
  values ('978-1503290563','CreateSpace','1115','Pride and Prejudice',1005,'2024-09-20','Michael Green','555-6785','michael.green@example.com','2024-10-04',3);</p>
  
  <p>insert into db_library.usertb(ISBN,Publisher_name,Publication_no,Book_title,Book_no,issue_date,issued_to,Phone_no,Email_address,Return_date,Overdue) <br>
  values ('978-0060850524','Harper Perennial Modern Classics','1117','Brave New World',1007,'2024-10-10','Brian Gray','555-9876','brian.gray@example.com','2024-10-24',0);</p>

  ***Output:***
  ![screenshot of database insertion output.](https://github.com/anushkaarana/assignment-librarydb/blob/main/output/2.png) 

- ***SELECT Query***
  <p> SELECT * from db_library.usertb; </p>

  ***Output:***
  ![screenshot of select query output.](https://github.com/anushkaarana/assignment-librarydb/blob/main/output/3.png)


- ***UPDATE & WHERE Query***
  <p> UPDATE db_library.usertb <br>
  SET issue_date='2024-09-29', Return_date='2024-10-14', Overdue=0 <br>
  WHERE issued_to='Emily White';
  </p>


  ***Output:***
  ![screenshot of update query output.](https://github.com/anushkaarana/assignment-librarydb/blob/main/output/4.png)

- ***ALTER Query***
  <p>
    ALTER table db_library.usertb <br>
    CHANGE Return_date Submission_date date;
  </p>

  ***Output:***
  ![screenshot of alter query output.](https://github.com/anushkaarana/assignment-librarydb/blob/main/output/5.png)

- ***ORDER BY Query***
  <p>
    SELECT issued_to, Phone_no, Email_address <br>
    FROM db_library.usertb <br>
    ORDER BY Overdue ASC; <br>
  </p>

   ***Output:***
  ![screenshot of order by query output.](https://github.com/anushkaarana/assignment-librarydb/blob/main/output/6.png)


- ***INNER JOIN Query***
  <p>
    SELECT u.issued_to, u.Phone_no, u.Email_address, d.overdue_amount <br>
    FROM usertb u <br>
    INNER JOIN overdues d ON u.Email_address = d.email; <br>
  </p>

  ***Output:***
  ![screenshot of inner join query output.](https://github.com/anushkaarana/assignment-librarydb/blob/main/output/8.png)


- ***LEFT JOIN Query***
  <p>
    SELECT u.issued_to, u.Phone_no, u.Email_address, d.overdue_amount <br>
    FROM usertb u <br>
    LEFT JOIN overdues d ON u.Email_address = d.email; <br>
  </p>

   ***Output:***
  ![screenshot of left join query output.](https://github.com/anushkaarana/assignment-librarydb/blob/main/output/9.png)


- ***RIGHT JOIN Query***
  <p>
    SELECT u.issued_to, u.Phone_no, u.Email_address, d.overdue_amount <br>
    FROM usertb u <br>
    RIGHT JOIN overdues d ON u.Email_address = d.email; <br>
  </p>

   ***Output:***
  ![screenshot of right join query output.](https://github.com/anushkaarana/assignment-librarydb/blob/main/output/10.png)


- ***FULL OUTER JOIN Query***
  <p>
    SELECT u.issued_to, u.Phone_no, u.Email_address, d.overdue_amount <br>
    FROM usertb u <br>
    LEFT JOIN overdues d ON u.Email_address = d.email <br>
    UNION <br>
    SELECT u.issued_to, u.Phone_no, u.Email_address, d.overdue_amount <br>
    FROM usertb u <br> 
    RIGHT JOIN overdues d ON u.Email_address = d.email; <br>
  </p>

  ***Output:***
  ![screenshot of full outer join query output.](https://github.com/anushkaarana/assignment-librarydb/blob/main/output/11.png)


- ***DROP Query***
  <p> DROP TABLE overdues;</p>

  ***Output:***
  ![screenshot of drop query output.](https://github.com/anushkaarana/assignment-librarydb/blob/main/output/12.png)















  
