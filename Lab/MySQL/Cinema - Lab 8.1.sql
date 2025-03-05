create database cinema_booking_system;

use cinema_booking_system;

create table Films (
ID int auto_increment primary key,
Name varchar(255) not null,
Length_min int not null
);

create table Screenings (
ID int auto_increment primary key,
Film_ID int not null,
Room_ID int not null,
Start_time datetime not null,
constraint Screeings foreign key (Film_ID) references Films (ID)
);

INSERT INTO films (name, length_min)
VALUES ('Blade Runner 2049',153),
('Dunkirk',106),
('Geostorm',121),
('Thor: Ragnarok',107),
('Jigsaw',116),
('The Death of Stalin',98),
('The Lego Ninjago Movie',101),
('Murder on the Orient Express',135),
('Paddington 2',88),
('Breathe',117),
('Blade Runner',127),
('Victoria and Abdul',112);

INSERT INTO screenings (film_id, room_id, start_time)
VALUES (2,1,'2017-10-01 13:00:00'),(1,2,'2017-10-01 13:30:00'),(2,3,'2017-10-01 14:00:00'),
(3,1,'2017-10-01 16:00:00'),(6,2,'2017-10-01 16:30:00'),(3,3,'2017-10-01 17:00:00'),
(4,1,'2017-10-01 19:00:00'),(6,2,'2017-10-01 19:30:00'),(4,3,'2017-10-01 20:00:00'),
(1,1,'2017-10-02 16:00:00'),(4,2,'2017-10-02 16:30:00'),(5,3,'2017-10-02 17:00:00'),
(2,1,'2017-10-02 19:00:00'),(1,2,'2017-10-02 19:30:00'),(1,3,'2017-10-02 20:00:00'),
(5,1,'2017-10-03 16:00:00'),(3,2,'2017-10-03 16:30:00'),(2,3,'2017-10-03 17:00:00'),
(1,1,'2017-10-03 19:00:00'),(2,2,'2017-10-03 19:30:00'),(3,3,'2017-10-03 20:00:00'),
(3,1,'2017-10-04 16:00:00'),(1,2,'2017-10-04 16:30:00'),(4,3,'2017-10-04 17:00:00'),
(2,1,'2017-10-04 19:00:00'),(1,2,'2017-10-04 19:30:00'),(5,3,'2017-10-04 20:00:00'),
(3,1,'2017-10-05 16:00:00'),(4,2,'2017-10-05 16:30:00'),(6,3,'2017-10-05 17:00:00'),
(2,1,'2017-10-05 19:00:00'),(6,2,'2017-10-05 19:30:00'),(3,3,'2017-10-05 20:00:00'),
(1,1,'2017-10-06 16:00:00'),(5,2,'2017-10-06 16:30:00'),(2,3,'2017-10-06 17:00:00'),
(4,1,'2017-10-06 19:00:00'),(2,2,'2017-10-06 19:30:00'),(4,3,'2017-10-06 20:00:00'),
(2,1,'2017-10-07 13:00:00'),(1,2,'2017-10-07 13:30:00'),(2,3,'2017-10-07 14:00:00'),
(3,1,'2017-10-07 16:00:00'),(1,2,'2017-10-07 16:30:00'),(1,3,'2017-10-07 17:00:00'),
(3,1,'2017-10-07 19:00:00'),(2,2,'2017-10-07 19:30:00'),(1,3,'2017-10-07 20:00:00'),
(7,1,'2017-10-08 13:00:00'),(1,2,'2017-10-08 13:30:00'),(1,3,'2017-10-08 14:00:00'),
(7,1,'2017-10-08 16:00:00'),(3,2,'2017-10-08 16:30:00'),(2,3,'2017-10-08 17:00:00'),
(2,1,'2017-10-08 19:00:00'),(5,2,'2017-10-08 19:30:00'),(7,3,'2017-10-08 20:00:00'),
(1,1,'2017-10-09 16:00:00'),(7,2,'2017-10-09 16:30:00'),(8,3,'2017-10-09 17:00:00'),
(3,1,'2017-10-09 19:00:00'),(8,2,'2017-10-09 19:30:00'),(9,3,'2017-10-09 20:00:00'),
(1,1,'2017-10-10 16:00:00'),(6,2,'2017-10-10 16:30:00'),(6,3,'2017-10-10 17:00:00'),
(3,1,'2017-10-10 19:00:00'),(9,2,'2017-10-10 19:30:00'),(6,3,'2017-10-10 20:00:00'),
(8,1,'2017-10-11 16:00:00'),(4,2,'2017-10-11 16:30:00'),(5,3,'2017-10-11 17:00:00'),
(9,1,'2017-10-11 19:00:00'),(3,2,'2017-10-11 19:30:00'),(4,3,'2017-10-11 20:00:00'),
(4,1,'2017-10-12 16:00:00'),(7,2,'2017-10-12 16:30:00'),(6,3,'2017-10-12 17:00:00'),
(3,1,'2017-10-12 19:00:00'),(7,2,'2017-10-12 19:30:00'),(7,3,'2017-10-12 20:00:00'),
(5,1,'2017-10-13 16:00:00'),(2,2,'2017-10-13 16:30:00'),(8,3,'2017-10-13 17:00:00'),
(9,1,'2017-10-13 19:00:00'),(2,2,'2017-10-13 19:30:00'),(9,3,'2017-10-13 20:00:00'),
(1,1,'2017-10-14 13:00:00'),(4,2,'2017-10-14 13:30:00'),(6,3,'2017-10-14 14:00:00'),
(2,1,'2017-10-14 16:00:00'),(1,2,'2017-10-14 16:30:00'),(5,3,'2017-10-14 17:00:00'),
(3,1,'2017-10-14 19:00:00'),(7,2,'2017-10-14 19:30:00'),(7,3,'2017-10-14 20:00:00'),
(2,1,'2017-10-15 13:00:00'),(10,2,'2017-10-15 13:30:00'),(11,3,'2017-10-15 14:00:00'),
(2,1,'2017-10-15 16:00:00'),(10,2,'2017-10-15 16:30:00'),(11,3,'2017-10-15 17:00:00'),
(3,1,'2017-10-15 19:00:00'),(10,2,'2017-10-15 19:30:00'),(11,3,'2017-10-15 20:00:00'),
(1,1,'2017-10-16 16:00:00'),(4,2,'2017-10-16 16:30:00'),(4,3,'2017-10-16 17:00:00'),
(4,1,'2017-10-16 19:00:00'),(4,2,'2017-10-16 19:30:00'),(2,3,'2017-10-16 20:00:00'),
(7,1,'2017-10-17 16:00:00'),(5,2,'2017-10-17 16:30:00'),(1,3,'2017-10-17 17:00:00'),
(8,1,'2017-10-17 19:00:00'),(7,2,'2017-10-17 19:30:00'),(7,3,'2017-10-17 20:00:00'),
(9,1,'2017-10-18 16:00:00'),(8,2,'2017-10-18 16:30:00'),(6,3,'2017-10-18 17:00:00'),
(6,1,'2017-10-18 19:00:00'),(3,2,'2017-10-18 19:30:00'),(5,3,'2017-10-18 20:00:00'),
(5,1,'2017-10-19 16:00:00'),(2,2,'2017-10-19 16:30:00'),(9,3,'2017-10-19 17:00:00'),
(3,1,'2017-10-19 19:00:00'),(4,2,'2017-10-19 19:30:00'),(9,3,'2017-10-19 20:00:00'),
(1,1,'2017-10-20 16:00:00'),(1,2,'2017-10-20 16:30:00'),(8,3,'2017-10-20 17:00:00'),
(2,1,'2017-10-20 19:00:00'),(6,2,'2017-10-20 19:30:00'),(4,3,'2017-10-20 20:00:00'),
(1,1,'2017-10-21 13:00:00'),(9,2,'2017-10-21 13:30:00'),(7,3,'2017-10-21 14:00:00'),
(2,1,'2017-10-21 16:00:00'),(8,2,'2017-10-21 16:30:00'),(2,3,'2017-10-21 17:00:00'),
(3,1,'2017-10-21 19:00:00'),(7,2,'2017-10-21 19:30:00'),(1,3,'2017-10-21 20:00:00'),
(3,1,'2017-10-22 13:00:00'),(11,2,'2017-10-22 13:30:00'),(10,3,'2017-10-22 14:00:00'),
(2,1,'2017-10-22 16:00:00'),(11,2,'2017-10-22 16:30:00'),(10,3,'2017-10-22 17:00:00'),
(4,1,'2017-10-22 19:00:00'),(11,2,'2017-10-22 19:30:00'),(10,3,'2017-10-22 20:00:00'),
(6,1,'2017-10-23 16:00:00'),(6,2,'2017-10-23 16:30:00'),(9,3,'2017-10-23 17:00:00'),
(12,1,'2017-10-23 19:00:00'),(6,2,'2017-10-23 19:30:00'),(9,3,'2017-10-23 20:00:00'),
(5,1,'2017-10-24 16:00:00'),(9,2,'2017-10-24 16:30:00'),(9,3,'2017-10-24 17:00:00'),
(12,1,'2017-10-24 19:00:00'),(8,2,'2017-10-24 19:30:00'),(8,3,'2017-10-24 20:00:00'),
(8,1,'2017-10-25 16:00:00'),(7,2,'2017-10-25 16:30:00'),(7,3,'2017-10-25 17:00:00'),
(9,1,'2017-10-25 19:00:00'),(5,2,'2017-10-25 19:30:00'),(6,3,'2017-10-25 20:00:00'),
(12,1,'2017-10-26 16:00:00'),(7,2,'2017-10-26 16:30:00'),(5,3,'2017-10-26 17:00:00'),
(12,1,'2017-10-26 19:00:00'),(9,2,'2017-10-26 19:30:00'),(12,3,'2017-10-26 20:00:00'),
(5,1,'2017-10-27 16:00:00'),(12,2,'2017-10-27 16:30:00'),(12,3,'2017-10-27 17:00:00'),
(7,1,'2017-10-27 19:00:00'),(12,2,'2017-10-27 19:30:00'),(7,3,'2017-10-27 20:00:00'),
(6,1,'2017-10-28 13:00:00'),(12,2,'2017-10-28 13:30:00'),(5,3,'2017-10-28 14:00:00'),
(5,1,'2017-10-28 16:00:00'),(6,2,'2017-10-28 16:30:00'),(5,3,'2017-10-28 17:00:00'),
(5,1,'2017-10-28 19:00:00'),(7,2,'2017-10-28 19:30:00'),(8,3,'2017-10-28 20:00:00'),
(12,1,'2017-10-29 13:00:00'),(8,2,'2017-10-29 13:30:00'),(9,3,'2017-10-29 14:00:00'),
(12,1,'2017-10-29 16:00:00'),(9,2,'2017-10-29 16:30:00'),(6,3,'2017-10-29 17:00:00'),
(5,1,'2017-10-29 19:00:00'),(5,2,'2017-10-29 19:30:00'),(12,3,'2017-10-29 20:00:00'),
(5,1,'2017-10-30 16:00:00'),(7,2,'2017-10-30 16:30:00'),(12,3,'2017-10-30 17:00:00'),
(5,1,'2017-10-30 19:00:00'),(12,2,'2017-10-30 19:30:00'),(7,3,'2017-10-30 20:00:00'),
(5,1,'2017-10-31 13:00:00'),(12,2,'2017-10-31 13:30:00'),(8,3,'2017-10-31 14:00:00'),
(5,1,'2017-10-31 16:00:00'),(5,2,'2017-10-31 16:30:00'),(9,3,'2017-10-31 17:00:00');

select * from Films;

select * from Screenings;

select * from Films
where Length_min > (select avg (length_min) as trungbing from Films);

select F.Name, count(F.Name) as Screening_Count from Films F
join Screenings S on F.ID = S.Film_ID
Group by F.Name;
select Name F, (select COUNT(*) from Screenings S
where S.Film_ID = F.ID) AS Screening_Count
from Films F;

select max(ID), min(ID) from Screenings
where ID in (Select count(S.ID) from Screenings S
join Films F on F.ID = S.Film_ID
Group by F.Name);