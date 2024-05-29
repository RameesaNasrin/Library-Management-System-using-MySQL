# Create a database named library and create following TABLES in the database:
# 1. Branch
# 2. Employee
# 3. Customer
# 4. IssueStatus
# 5. ReturnStatus
# 6. Books

 
CREATE DATABASE Library;

USE Library;

CREATE TABLE Branch(
Branch_no INT PRIMARY KEY,
Manager_Id INT,
Branch_address VARCHAR(50),
Contact_no BIGINT
);
INSERT INTO Branch VALUES
(1001, 101,'Jalan Mangga Emas No.5,Denpasar',5565665565),
(1002, 102, '3890 Oakwood Avenue,Manhattan',4568972315),
(1003, 103,'Via Silvio Spaventa 98,Scheggia',7856941236),
(1004, 104,'Rua Pouso Alegre 1768,Varginha' ,9865741236),
(1005, 105,'Hua Yuan Lu 5hao,City Area - Mentougou District', 8564793215),
(1006, 106,'2357 Cemetery Street,Houston', 7586941236),
(1007, 107,'213, Kirikiri Rd., Olodi,Lagos',8564732196),
(1008, 108,'KHolodilnaya Ul., bld. 16, appt. 129,Novosibirsk',8654972314),
(1009, 109,'Gao Xin Guo Ji Guang Chang Bzuo 212,Chengdu',9986574231),
(1010, 110,'Suite 28, Fleming Plaza, AIT Road,Alagbado',8975463214);

SELECT * FROM Branch;

CREATE TABLE Employee(
Emp_Id INT PRIMARY KEY,
Emp_name VARCHAR(30),
Position VARCHAR(30),
Salary INT,
Branch_no INT,
FOREIGN KEY(Branch_no) REFERENCES Branch(Branch_no));

INSERT INTO Employee VALUES
(10001,'Jane Doe','Library Assistant',50000,1001),
(10002,'Jane Smith','Library Manager',80000,1001),
(10003,'Bob Johnson','Public relations assistant',40000,1002),
(10004,'Alice Williams','Librarian',60000,1002),
(10005,'Charlie Brown',' Circulation manager',100000,1002),
(10006,'Eva Davis',' Information specialist',60000,1003),
(10007,'Arun Miller',' IT support',70000,1003),
(10008,'Sophia Wilson','Library Technician',50000,1004),
(10009,'David Moore','Librarian',60000,1005),
(10010,'Bob Anderson','Library Assistant',50000,1005),
(10011,'Anna D','Public relations assistant',55000,1006),
(10012,'Annie Roy','Accounting and human resources',60000,1006),
(10013,'Irene Sajan','Library Manager',80000,1007),
(10014,'Sujithra Ram','Accounting and human resources',60000,1007),
(10015,'Ashwathy Ajayan','Library Assistant',50000,1008),
(10016,'Christy George','Library Manager',80000,1008),
(10017,'Merin Manuel',' Information specialist',60000,1009),
(10018,'Manuel Augustine',' Circulation manager',100000,1009),
(10019,'Dona Smith',' Circulation manager',80000,1010),
(10020,'Bimal Johnson',' IT support',80000,1010);

SELECT * FROM Employee;

CREATE TABLE customer(
Customer_Id INT PRIMARY KEY,
Customer_name VARCHAR(30),
Customer_address VARCHAR(60),
Reg_date DATE);

INSERT INTO Customer VALUES 
(3001, 'Alice', 'Jalan Mangga Emas No.5,Denpasar', '2021-12-10'),
(3002, 'Bob','3890 Oakwood Avenue,Manhattan', '2022-01-15'),
(3003, 'Charlie', 'Via Silvio Spaventa 98,Scheggia', '2022-02-03'),
(3004, 'Diana','Rua Pouso Alegre 1768,Varginha' , '2022-04-20'),
(3005, 'Ethan', 'Hua Yuan Lu 5hao,City Area - Mentougou District', '2022-05-02'),
(3006, 'Olivia', '2357 Cemetery Street,Houston', '2022-06-10'),
(3007, 'William ', '213, Kirikiri Rd., Olodi,Lagos', '2022-09-15'),
(3008, 'Sophia ', 'KHolodilnaya Ul., bld. 16, appt. 129,Novosibirsk', '2022-10-05'),
(3009, 'Jacob', 'Gao Xin Guo Ji Guang Chang Bzuo 212,Chengdu', '2022-12-01'),
(3010, 'Isabella ', 'Suite 28, Fleming Plaza, AIT Road,Alagbado', '2023-01-20'),
(3011,'Johnson','Jalan Mangga Emas No.5,Denpasar','2023-03-05'),
(3012,'Smith', '3890 Oakwood Avenue,Manhattan','2023-05-10'),
(3013,'Davis','Via Silvio Spaventa 98,Scheggia','2023-05-20'),
(3014,'Wilson','Rua Pouso Alegre 1768,Varginha' ,'2023-07-25'),
(3015,'Lee','Hua Yuan Lu 5hao,City Area - Mentougou District','2023-08-10'),
(3016,'Thompson','2357 Cemetery Street,Houston', '2023-09-15'),
(3017,'Anderson','213, Kirikiri Rd., Olodi,Lagos','2023-10-05'),
(3018,'Martinez','KHolodilnaya Ul., bld. 16, appt. 129,Novosibirsk','2023-11-24'),
(3019,'Hernandez','Gao Xin Guo Ji Guang Chang Bzuo 212,Chengdu','2023-12-14'),
(3020,'Rodriguez','Suite 28, Fleming Plaza, AIT Road,Alagbado','2024-01-06');

SELECT * FROM Customer;

CREATE TABLE Books(
ISBN INT PRIMARY KEY,
Book_title VARCHAR(100),
Category VARCHAR(30),
Rental_price DECIMAL(10,2),
Status ENUM('YES','NO'),
Author VARCHAR(30),
Publisher VARCHAR(30)
);

INSERT INTO Books VALUES
(20001, 'A Tale of Two Cities', 'History', 9.8, 'YES', 'Charles Dickens', 'Chapman & Hall'),
(20002, 'The Alchemist', 'Fantasy', 10.0, 'NO', 'Paulo Coelho', 'HarperTorch'),
(20003, 'She: A History of Adventure', 'Adventure', 6.5, 'NO', 'H. Rider Haggard', 'Longman'),
(20004, 'Black Beauty', 'Childrens literature', 7.8, 'YES', 'Anna Sewell', 'Jarrold & Sons'),
(20005, 'The Ginger Man', 'Novel', 6.9, 'YES', 'J. P. Donleavy', 'Neville Spearman'),
(20006, 'War and Peace ', 'Historical novel', 8.9, 'YES', 'Leo Tolstoy', 'The Russian Messenger'),
(20007, 'Harry Potter and the Sorcerers Stone', 'Fantasy', 8.0, 'NO', 'J.K. Rowling', 'Bloomsbury'),
(20008, 'The Hitchhikers Guide to the Galaxy', 'Science fiction', 8.6, 'YES', 'Douglas Adams', 'Lippincott'),
(20009, 'The Exorcist', 'Horror', 7.5, 'YES', 'William Peter Blatty', 'Harper & Row'),
(20010, 'Harry Potter and the Chamber of Secrets', 'Fantasy', 8.0, 'YES', 'J. K. Rowling', 'Bloomsbury'),
(20011, 'Harry Potter and the Prisoner of Azkaban', 'Fantasy', 8.5, 'NO', 'J. K. Rowling', 'Bloomsbury'),
(20012, 'Harry Potter and the Goblet of Fire', 'Fantasy', 7.5,'NO', 'J. K. Rowling', 'Bloomsbury'),
(20013, 'Harry Potter and the Philosophers Stone', 'Fantasy', 8.9, 'YES', '. K. Rowling', 'Bloomsbury'),
(20014, 'The Little Prince', 'Childrens Fiction', 7.5,'YES', 'Antoine de Saint-Exupéry', 'Reynal & Hitchcock'),
(20015, 'Kane and Abel', 'Novel', 5.8, 'NO', 'Jeffrey Archer', 'Hodder & Stoughton'),
(20016, 'Gone with the Wind ', 'History', 8.5, 'YES', 'Margaret Mitchell', 'Macmillan Publishers'),
(20017, 'The Adventures of Pinocchio', 'Childrens Fiction', 8.9,'YES', 'Carlo Collodi', 'Bloomsbury'),
(20018, 'The Girl on the Train', 'Thriller', 6.5, 'YES', 'Paula Hawkins', 'Riverhead Books'),
(20019, 'The Tale of Peter Rabbit', 'Childrens Literature', 9.0, 'YES', 'Beatrix Potter', 'Frederick Warne & Co.'),
(20020, 'Harry Potter and the Half-Blood Prince', 'Fantasy', 8.5, 'YES', 'J. K. Rowling', 'Bloomsbury');

SELECT * FROM Books;

CREATE TABLE IssueStatus(
Issue_Id INT PRIMARY KEY,
Issued_cust INT,
Issued_book_name VARCHAR(100),
Issue_date DATE,
Isbn_book INT,
FOREIGN KEY(Issued_cust) REFERENCES Customer(Customer_Id),
FOREIGN KEY(Isbn_book) REFERENCES Books(ISBN)
);

INSERT INTO Issuestatus VALUES
(4001, 3002, 'A Tale of Two Cities', '2023-05-04', 20001),
(4002, 3005, 'Black Beauty', '2023-05-10', 20004),
(4003, 3006, 'Harry Potter and the Chamber of Secrets', '2023-06-10', 20010),
(4004, 3007,'War and Peace ', '2023-06-15',20006),
(4005, 3010, 'The Ginger Man', '2023-08-25',20005),
(4006, 3012,  'The Little Prince', '2023-08-30',20014),
(4007, 3014,  'The Adventures of Pinocchio', '2023-10-01', 20017),
(4008, 3015,'The Girl on the Train', '2023-10-05',  20018),
(4009, 3018,  'The Tale of Peter Rabbit', '2023-12-20',20019),
(4010, 3020, 'Harry Potter and the Half-Blood Prince', '2023-12-25',20020);

SELECT * FROM Issuestatus;

CREATE TABLE Returnstatus(
Return_Id INT PRIMARY KEY,
Return_cust INT,
Return_book_name VARCHAR(100),
Return_date DATE,
Isbn_book2 INT,
FOREIGN KEY(Return_cust) REFERENCES customer(Customer_Id),
FOREIGN KEY(Isbn_book2) REFERENCES Books(ISBN)
);

INSERT INTO Returnstatus VALUES
(5001, 3002,'A Tale of Two Cities', '2023-12-10', 20001),
(5002, 3005,'Black Beauty', '2023-12-20', 20004),
(5003, 3006,'Harry Potter and the Chamber of Secrets', '2024-01-10', 20010),
(5004, 3007,'War and Peace ', '2024-01-15',20006),
(5005, 3010,'The Ginger Man', '2024-03-25',20005),
(5006, 3012,'The Little Prince', '2024-03-30',20014),
(5007, 3014,'The Adventures of Pinocchio', '2024-04-01', 20017),
(5008, 3015,'The Girl on the Train', '2024-04-05',  20018),
(5009, 3018,'The Tale of Peter Rabbit', '2024-05-20',20019),
(5010, 3020,'Harry Potter and the Half-Blood Prince', '2024-05-25',20020);

SELECT * FROM Returnstatus;

#1. Retrieve the book title, category, and rental price of all available BOOKS.

SELECT Book_title,Category,Rental_price FROM Books WHERE STATUS = 'YES';

#2 List the employee names and their respective salaries in descending order of salary.

SELECT Emp_name,Salary FROM Employee ORDER BY Salary DESC;

#3 Retrieve the book titles and the corresponding customers who have issued those books.

SELECT Books.Book_title,Customer.Customer_name FROM Issuestatus 
JOIN Books ON Issuestatus.Isbn_book = Books.ISBN
JOIN Customer ON Issuestatus.Issued_cust = Customer.Customer_ID;

#4  Display the total count of books in each category.

SELECT Category, COUNT(*) FROM Books GROUP BY Category;

#5 Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.

SELECT Emp_name,Position,Salary FROM Employee WHERE Salary > 50000;

#6. List the customer names who registered before 2022-01-01 and have not issued any books yet.

SELECT Customer_name,Reg_date FROM Customer
LEFT JOIN Issuestatus ON Customer.Customer_ID = Issuestatus.Issued_Cust
WHERE Customer.Reg_date < '2022-01-01' AND Issuestatus.Isbn_book IS NULL; 

#7 Display the branch numbers and the total count of employees in each branch.

SELECT Branch_no,COUNT(*) FROM Employee GROUP BY Branch_No;

#8 Display the names of customers who have issued books in the month of June 2023.

SELECT Customer_name FROM Customer
JOIN Issuestatus ON Customer.Customer_ID = Issuestatus.Issued_cust
WHERE Issuestatus.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';

#9  Retrieve book_title from book table containing history. 

SELECT Book_title FROM Books WHERE Category = 'History';

#10 Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.

SELECT Branch_no,COUNT(*) as Total_employee FROM Employee GROUP BY Branch_no HAVING Total_employee > 5;

# Retrieve the branch numbers along with the count of employees for branches having more than 2 employees.
SELECT Branch_no,COUNT(*) as Total_employee FROM Employee GROUP BY Branch_no HAVING Total_employee > 2;