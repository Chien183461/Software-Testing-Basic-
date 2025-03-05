create database book_shop;
use book_shop;
CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

show tables;

select * from books;

select concat(author_fname,' ', author_lname) as author_fullname from books;

select concat_ws('_', author_fname, author_lname) as author_fullname from books;

select substring('dataanalyst',5,7);

select length('database');

select title, length(title) from books;

select upper ('database');

select title, upper(title) from books;

select lower ('DATABASE');

select title, lower(title) from books;

SELECT 10 != 10; #Sẽ cho giá trị ngược lại với biểu thức (!)

SELECT 15 > 14 && 99 - 5 <= 94; #Khi tất cả các biểu thức đều đúng thì biểu thức chung mới đúng (&&)

SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10; #Chỉ cần có một biểu thức đúng thì biểu thức chung sẽ đúng (||)

select * from books
where released_year < 1980;

select * from books
where author_lname = 'Eggers' or author_lname = 'Chabon';

select * from books
where author_lname = 'lahiri'
and released_year < 2000;

select * from books
where pages between 100 and 200;

select author_lname, count(title) as quantity from books
group by author_lname;

select author_lname, count(title) as quantity from books
where author_lname='Carver';

create table students (
ID int auto_increment primary key,
first_name varchar(150) not null
);

create table papers (
student_ID int,
title varchar(150),
grade int,
constraint ID foreign key (student_ID) references students (ID)
);

insert into students (first_name)
values 	('Caleb'), 
		('Samantha'), 
        ('Raj'), 
        ('Carlos'), 
        ('Lisa');

insert into papers (student_id, title, grade)
values (1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

select * from students;

select * from papers;

select s.first_name, p.title, p.grade from students s
left join papers p on p.student_id= s.ID;

select first_name, avg(ifnull(grade,0)) as DTB from students s
left join papers p on p.student_id= s.ID
group by first_name
order by DTB desc;

create table Reviewers (
ID int auto_increment primary key,
First_name varchar(100),
Last_name varchar (100)
);

create table Series (
ID int auto_increment primary key,
Title varchar (100) not null,
Released_year year,
genre varchar (100)
);

create table Reviews (
ID int auto_increment primary key,
Rating float,
Series_ID int,
Reviewer_ID int,
CONSTRAINT S_ID foreign key (Series_ID) references Series (ID),
Constraint R_ID foreign key (Reviewer_ID) references Reviewers (ID)
);

INSERT INTO series (title, released_year, genre) 
VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');

INSERT INTO reviewers (first_name, last_name) 
VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');
    
INSERT INTO reviews(series_id, reviewer_id, rating) 
VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);

Select * from series;
select * from reviewers;
select * from reviews;

select s.title, r.rating from series s
join reviews r on s.ID = r.Series_ID;

select s.title, round(avg(r.rating),5) as avg_rating from series s
join reviews r on s.ID = r.Series_ID
group by s.title
order by avg_rating asc;

select s.genre, round(avg(r.rating),2) as avg_rating from series s
join reviews r on s.ID = r.Series_ID
group by s.genre;