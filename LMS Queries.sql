-- Library Management System Quiries 

-- 1. Retrieve all books in the library
-- Write a query to display the book title, ISBN, author, genre, and price for every book in the books table.

SELECT 
	book_title,
    book_isbn, 
    author,
    genre, 
    price
FROM books;

-- 2. Find all available books
-- Retrieve the titles, authors, and prices of books whose status is 'Available', ordered by price from highest to lowest.

SELECT
	book_title,
    author,
    price,
    status
FROM books 
WHERE status = 'Available'
ORDER BY price DESC;

-- 3. Find employees earning above a certain salary
-- Display the first name, last name, position, and salary of employees earning more than $40,000.

SELECT 
	first_name,
    last_name,
    position,
	salary
FROM employee
WHERE salary > 40000;

-- 4. Count the number of books in each genre
-- Display each genre and the number of books belonging to it. 
-- Sort the results from the genre with the most books to the fewest.

SELECT
		genre, 
	    COUNT(book_title)
FROM books
GROUP BY genre
ORDER BY COUNT(book_title) DESC;

-- 5. Find the most expensive book
-- Return the title, author, and price of the most expensive book in the library. 
-- Handle ties if multiple books share the highest price.

SELECT 
	book_title,
    author,
    price
FROM books 
WHERE price IN (
	SELECT MAX(price)
	FROM books
	);

-- 6. List members who have borrowed books
-- Display each member's ID, first name, last name, and the ISBN of every book they have borrowed.

SELECT
	m.member_id,
    m.first_name,
    m.last_name,
	i.issued_book_isbn
FROM members m 
JOIN issue_status i
	ON m.member_id = i.issued_member_id;

-- 7. Find books that have never been borrowed
-- Retrieve the ISBN and title of every book that does not appear in issue_status.

SELECT 
	b.book_title,
    i.issued_book_isbn
FROM issue_status i
LEFT JOIN books b
	ON i.issued_book_isbn = b.book_isbn
WHERE issued_book_isbn NOT IN (
	SELECT 
		issued_book_isbn
	FROM issue_status
    );

-- 8. Count how many books each member has borrowed. 
-- Display every member's ID, full name, and total number of borrowing records. 
-- Include members who have never borrowed a book.

SELECT 
	i.issued_member_id AS member_id,
    m.first_name,
    m.last_name,
    COUNT(issue_id) AS borrowed_books
FROM issue_status i
RIGHT JOIN members m
	ON i.issued_member_id = m.member_id
GROUP BY m.member_id;

-- 9. Find books that have not yet been returned. 
-- Display the issue ID, member ID, book ISBN, and issue date for 
-- borrowing records that have no corresponding record in return_status.

SELECT 
	i.issue_id,
    i.issued_member_id,
    i.issued_book_isbn,
    i.issued_date
FROM issue_status i
LEFT JOIN return_status r
	ON i.issue_id = r.issue_id
WHERE i.issue_id NOT IN (
	SELECT 
		issue_id
	FROM return_status
	);

-- 10. Find members who registered before a specific date
-- Write a query to display each member's ID, first name, last name, and registration date 
-- for members who registered before January 1, 2022. Sort the results by registration date, from oldest to newest.

SELECT 
	member_id,
    first_name,
    last_name,
    reg_date
FROM members 
WHERE reg_date < '2022-01-01'
ORDER BY reg_date;

-- end