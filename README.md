# Library Management System
This Library Management System project allows operations for a library to run efficiently. It gives users the ability to keep track of books, members, employees, branches, issued books, and returned books. With SQL, this system upholds a complete database of books, their rental cost, their availability, as well as other applicable details. This system can also maintain records of customers, employees, and branches within the Library Management System. 

# Features 
####Books: Find book details such as title, author, ibsn, publisher, and availability. Ability to add, remove, or update books within the system.
####Members: Track library members in the system using their name, issuance history, registration date, and address.
####Employees & Branches: Manage library faculty members with employee names, salaries, and positions. Also track employee branch assignments, branch numbers, branch managers, and each branches contact information. 
####Book Availability: Find book issuance and returns by members. Follow the status timeline of books and when they should be returned. 

# Queries & Analysis 
This system allows for different SQL queries and data analyst functions to derive important information from the libraries data. The following queries can assist with those insights which are:  

###1. Retrieve all books in the library?
Write a query to display the book title, ISBN, author, genre, and price for every book in the books table.

###2. Find all available books?
Retrieve the titles, authors, and prices of books whose status is 'Available', ordered by price from highest to lowest.

###3. Find employees earning above a certain salary?
Display the first name, last name, position, and salary of employees earning more than $40,000.

###4. Count the number of books in each genre?
Display each genre and the number of books belonging to it. Sort the results from the genre with the most books to the fewest.

###5. Find the most expensive book?
Return the title, author, and price of the most expensive book in the library. Handle ties if multiple books share the highest price.

###6. List members who have borrowed books?
Display each member's ID, first name, last name, and the ISBN of every book they have borrowed.

###7. Find books that have never been borrowed?
Retrieve the ISBN and title of every book that does not appear in issue_status.

###8. Count how many books each member has borrowed?
Display every member's ID, full name, and total number of borrowing records. Include members who have never borrowed a book.

###9. Find books that have not yet been returned?
Display the issue ID, member ID, book ISBN, and issue date for borrowing records that have no corresponding record in return_status.

###10. Find members who registered before a specific date?
Write a query to display each member's ID, first name, last name, and registration date for members who registered before January 1, 2022. Sort the results by registration date, from oldest to newest.
