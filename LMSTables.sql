-- Library Management System Tables

DROP DATABASE IF EXISTS library;
CREATE DATABASE library;
USE library;

CREATE TABLE employee (
	emp_id INT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    position VARCHAR(20),
    salary DECIMAL(10,2)
		CHECK(salary >=0),
    branch_id INT,
    PRIMARY KEY(emp_id)
	);     

CREATE TABLE branch (
	branch_id INT auto_increment,
    mgr_id INT,
    branch_address VARCHAR(50),
	branch_phone_no VARCHAR(16),
    PRIMARY KEY(branch_id),
    FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL 
	);

ALTER TABLE employee
ADD FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL;

CREATE TABLE books (
	book_isbn VARCHAR(17),
    book_title VARCHAR(60),
    genre VARCHAR(30),
    author VARCHAR(30),
    publisher VARCHAR(30),
    status ENUM('Available', 'Unavailable', 'Lost'),
    price DECIMAL(10,2)
		CHECK(price >= 0),
    PRIMARY KEY(book_isbn)
    );

CREATE TABLE issue_status (
	issue_id INT auto_increment, 
    issued_member_id INT,
    issued_book_isbn VARCHAR(17),
    issued_date DATE,
    issued_emp_id INT,
    PRIMARY KEY(issue_id),
    FOREIGN KEY(issued_book_isbn) REFERENCES books(book_isbn) ON DELETE RESTRICT,
    FOREIGN KEY(issued_emp_id) REFERENCES employee(emp_id) ON DELETE SET NULL
    );

CREATE TABLE members (
	member_id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    member_address VARCHAR(40),
    reg_date DATE,
    PRIMARY KEY(member_id)
	);
    
ALTER TABLE issue_status 
ADD FOREIGN KEY(issued_member_id) REFERENCES members(member_ID) ON DELETE RESTRICT;

CREATE TABLE return_status (
	return_id INT auto_increment,
    issue_id INT UNIQUE,
    return_date DATE,
    PRIMARY KEY(return_id),
    FOREIGN KEY(issue_id) REFERENCES issue_status(issue_id) ON DELETE RESTRICT
    );
    
