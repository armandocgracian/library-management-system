-- Library Management System Data

INSERT INTO employee(emp_id, first_name, last_name, position, salary, branch_id) 
VALUES
	(101, 'John', 'Doe', 'Clerk', 60000, NULL),
    (102, 'Jane', 'Smith', 'Clerk', 45000, NULL),
    (103, 'Mike', 'John', 'Librarian', 55000, NULL),
	(104, 'Emily', 'Davis', 'Assistant', 40000, NULL),
    (105, 'Sarah', 'Brown', 'Assistant', 42000, NULL),
    (106, 'Michelle', 'Ramirez', 'Assistant', 43000, NULL),
    (107, 'Michael', 'Thompson', 'Clerk', 62000, NULL),
    (108, 'Jessica', 'Taylor', 'Clerk', 46000, NULL),
    (109, 'Daniel', 'Anderson', 'Manager', 57000, NULL);
    
INSERT INTO branch(mgr_id, branch_address, branch_phone_no) 
VALUES 
	(109, '123 Main St', '+91 909-998-8676'),
    (109, '456 Elm St', '+91 909-998-8677'),
    (109, '789 Oak St', '+91 909-998-8678');
    
UPDATE employee
SET branch_id = 1
WHERE emp_id = 101;

UPDATE employee
SET branch_id = 1
WHERE emp_id = 103;

UPDATE employee
SET branch_id = 1
WHERE emp_id = 104;

UPDATE employee
SET branch_id = 1
WHERE emp_id = 105;

UPDATE employee
SET branch_id = 1
WHERE emp_id = 106;

INSERT INTO employee(emp_id, first_name, last_name, position, salary, branch_id) 	
VALUES
	(110, 'Laura', 'Martinez', 'Manager', 41000, NULL),
    (111, 'Christopher', 'Lee', 'Assistant', 65000, NULL);

INSERT INTO branch(mgr_id, branch_address, branch_phone_no) 
VALUES 
	(110, '567 Pine St', '+91 909-998-8679'),
    (110, '890 Maple St', '+91 909-998-8680');

UPDATE employee
SET branch_id = 2
WHERE emp_id = 102;

UPDATE employee
SET branch_id = 5
WHERE emp_id = 107;

UPDATE employee
SET branch_id = 4
WHERE emp_id = 108;

UPDATE employee
SET branch_id = 3
WHERE emp_id = 109;

UPDATE employee
SET branch_id = 5
WHERE emp_id = 110;

UPDATE employee
SET branch_id = 5
WHERE emp_id = 111;

INSERT INTO books(book_isbn, book_title, genre, author, publisher, status, price) 
VALUES 
	('978-0-553-29698-2', 'The Catcher in the Rye', 'Classic', 'J.D. Salinger', 'Little, Brown, and Company', 'Available', 7),
    ('978-0-330-25864-8', 'Animal Farm', 'Classic', 'George Orwell', 'Penguin Books', 'Available', 5.5),
    ('978-0-14-118776-1', 'One Hundred Years of Solitude', 'Literacy Fiction', 'Gabriel Garcia Marquez', 'Penguin Books', 'Available', 6.5),
    ('978-0-525-47535-5', 'The Great Gatsby', 'Classic', 'F. Scott Fitzgerald', 'Scribner', 'Available', 8),
    ('978-0-141-44171-6', 'Jane Eyre', 'Classic', 'Charlotte Bronte', 'Penguin Classics', 'Available', 4),
    ('978-0-307-37840-1', 'The Alchemist', 'Fiction', 'Paul Coelho', 'HaperOne', 'Available', 2.5),
    ('978-0-679-76489-8', 'Harry Potter and the Sorcerers Stone', 'Fantasy', 'J.K. Rowling', 'Scholastic', 'Available', 7),
    ('978-0-7432-4722-4', 'The Da Vinci Code', 'Mystery', 'Dan Brown', 'Doubleday', 'Available', 8),
    ('978-0-09-957807-9', 'A Game of Thrones', 'Fantasy', 'George R.R. Martin', 'Bantam', 'Available', 7.5),
    ('978-0-393-05081-8', 'A Peoples History of the United States', 'History', 'Howard Zinn', 'Harper Perennial', 'Available', 9),
    ('978-0-19-280551-1', 'The Guns of August', 'History', 'Barbra W. Tuchman', 'Oxford University Press', 'Available', 7),
    ('978-0-307-58837-1', 'Sapiens: A Brief History of Humankind', 'History', 'Yuval Noah Harari', 'Harper Perennial', 'Unavailable', 8),
    ('978-0-375-41398-8', 'The Diary of a Young Girl', 'History', 'Anne Frank', 'Bantam', 'Unavailable', 6.5),
    ('978-0-14-044930-3', 'The Histories', 'History', 'Herodotus', 'Penguin Classics', 'Available', 5.5),
    ('978-0-393-91257-8', 'Guns, Germs, and Steel: The Fate of Human Societies', 'History', 'Jared Diamond', 'W.W. Norton & Company', 'Available', 7),
    ('978-0-7432-7357-1', '1491: New Revelations of the Americas Before', 'History', 'Charles C. Mann', 'Vintage Books', 'Unavailable', 6.5),
    ('978-0-679-64115-3', '1984', 'Dystopian', 'George Orwell', 'Penguin Books', 'Available', 6.5),
    ('978-0-14-143951-8', 'Pride and Prejudice', 'Classic', 'Jane Austen', 'Penguin Classics', 'Available', 5),
    ('978-0-452-28240-7', 'Brave New World', 'Dystopian', 'Aldous Huxley', 'Harper Perennial', 'Available', 6.5),
    ('978-0-670-81302-4', 'The Road', 'Dystopian', 'Cormac McCarthy', 'Knopf', 'Available', 7),
    ('978-0-385-33312-0', 'The Shining', 'Horror', 'Stephen King', 'Doubleday', 'Available', 6),
    ('978-0-451-52993-5', 'Fahrenheit 451', 'Dystopian', 'Ray Bradbury', 'Ballantine Books', 'Available', 5.5),
    ('978-0-345-39180-3', 'Dune', 'Science Fiction', 'Frank Herbert', 'Ace', 'Available', 8.5),
    ('978-0-375-50167-0', 'The Road', 'Dystopian', 'Cormac McCarthy', 'Vintage', 'Available', 7),
    ('978-0-06-025492-6', 'Where the Wild Things Are', 'Children', 'Maurice Sendak', 'HarperCollins', 'Available', 3.5),
    ('978-0-06-112241-5', 'The Kite Runner', 'Fiction', 'Khaled Hosseini', 'Riverhead Books', 'Available', 5.5),
    ('978-0-06-440055-8', 'Charlotte''s Web', 'Children', 'E.B. White', 'Harper & Row', 'Available', 4),
    ('978-0-679-77644-3', 'Beloved', 'Fiction', 'Toni Morrison', 'Knopf', 'Available', 6.5),
    ('978-0-14-027526-3', 'A Tale of Two Cities', 'Classic', 'Charles Dickens', 'Penguin Books', 'Available', 4.5),
    ('978-0-7434-7679-3', 'The Stand', 'Horror', 'Stephen King', 'Doubleday', 'Available', 7),
    ('978-0-451-52994-2', 'Moby Dick', 'Classic', 'Herman Melville', 'Penguin Books', 'Available', 6.5),
    ('978-0-06-112008-4', 'To Kill a Mockingbird', 'Classic', 'Harper Lee', 'J.B. Lippincott & Co.', 'Available', 5),
    ('978-0-553-57340-1', '1984', 'Dystopian', 'George Orwell', 'Penguin Books', 'Available', 6.5),
    ('978-0-7432-4722-5', 'Angels & Demons', 'Mystery', 'Dan Brown', 'Doubleday', 'Available', 7.5),
    ('978-0-7432-7356-4', 'The Hobbit', 'Fantasy', 'J.R.R. Tolkien', 'Houghton Mifflin Harcourt', 'Available', 7);

INSERT INTO members(member_id, first_name, last_name, member_address, reg_date) 
VALUES 
		(201, 'Alice', 'John', '123 Main St', '2021-05-15'),
        (202, 'Bob', 'Smith', '456 Elm St', '2021-06-20'),
		(203, 'Carol', 'Davis', '789 Oak St', '2021-07-10'),
		(204, 'Dave', 'Wilson', '567 Pine St', '2021-08-05'),
		(205, 'Eve', 'Brown', '890 Maple St', '2021-09-05'),
		(206, 'Frank', 'Thomas', '234 Cedar St', '2021-10-15'),
		(207, 'Grace', 'Taylor', '345 Walnut St', '2021-11-20'),
		(208, 'Henry', 'Anderson', '456 Birch St', '2021-12-10'),
		(209, 'Ivy', 'Martinez', '567 Oak St', '2022-01-5'),
		(210, 'Jack', 'Wilson', '678 Pine St', '2022-02-25'),
		(218, 'Sam', NULL, '133 Pine St', '2024-06-01'),
		(219, 'John', NULL, '143 Main St', '2024-05-01');

INSERT INTO issue_status(issued_member_id, issued_book_isbn, issued_date, issued_emp_id)
VALUES 
	(NULL, NULL, NULL, NULL),
    (NULL, NULL, NULL, NULL),
    (NULL, NULL, NULL, NULL),
    (NULL, NULL, NULL, NULL),
    (NULL, NULL, NULL, NULL),
	(206, '978-0-330-25864-8', '2024-03-10', 104),
    (207, '978-0-14-118776-1', '2024-03-11', 104),
    (208, '978-0-525-47535-5', '2024-03-12', 104),
    (209, '978-0-141-44171-6', '2024-03-13', 105),
    (210, '978-0-307-37840-1', '2024-03-14', 105),
	(209, '978-0-679-76489-8', '2024-03-15', 105),
    (209, '978-0-09-957807-9', '2024-03-16', 106),
    (209, '978-0-393-05081-8', '2024-03-17', 106),
    (209, '978-0-19-280551-1', '2024-03-18', 106),
	(209, '978-0-14-044930-3', '2024-03-19', 107),
    (210, '978-0-393-91257-8', '2024-03-20', 107),
    (210, '978-0-679-64115-3', '2024-03-21', 107),
    (201, '978-0-14-143951-8', '2024-03-22', 108),
	(210, '978-0-452-28240-7', '2024-03-23', 108),
    (210, '978-0-670-81302-4', '2024-03-24', 108),
    (202, '978-0-385-33312-0', '2024-03-25', 109),
    (202, '978-0-451-52993-5', '2024-03-26', 109),
    (203, '978-0-345-39180-3', '2024-03-27', 109),
    (204, '978-0-06-025492-6', '2024-03-28', 110),
    (205, '978-0-06-112241-5', '2024-03-29', 110),
    (205, '978-0-06-440055-8', '2024-03-30', 110),
    (205, '978-0-679-77644-3', '2024-03-31', 110),
    (205, '978-0-14-027526-3', '2024-04-01', 110),
    (205, '978-0-7434-7679-3', '2024-04-02', 110),
    (206, '978-0-451-52994-2', '2024-04-03', 101),
    (206, '978-0-06-112008-4', '2024-04-04', 101),
    (206, '978-0-7432-7356-4', '2024-04-05', 106),
    (207, '978-0-7432-4722-5', '2024-04-06', 106),
    (207, '978-0-375-41398-8', '2024-04-07', 106),
    (207, '978-0-307-58837-1', '2024-04-08', 108),
    (207, '978-0-7432-7357-1', '2024-04-09', 102),
    (207, '978-0-553-29698-2', '2024-04-10', 103),
    (208, '978-0-525-47535-5', '2024-04-11', 104),
    (209, '978-0-679-76489-8', '2024-04-12', 105),
    (210, '978-0-330-25864-8', '2024-04-13', 102);
    
INSERT INTO return_status(issue_id, return_date)
VALUES 
	(1, '2023-06-06'),
    (5, '2023-06-07'),
    (3, '2023-08-07'),
    (6, '2024-05-01'),
    (7, '2024-05-03'),
    (8, '2024-05-05'),
    (9, '2024-05-07'),
    (10, '2024-05-09'),
    (11, '2024-05-11'),
    (12, '2024-05-13'),
    (13, '2024-05-15'),
    (14, '2024-05-17'),
    (15, '2024-05-19'),
    (16, '2024-05-21'),
    (17, '2024-05-23'),
    (18, '2024-05-25'),
    (19, '2024-05-27'),
    (20, '2024-05-29');
    
    
    
     