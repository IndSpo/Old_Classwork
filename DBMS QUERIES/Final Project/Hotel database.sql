Create TABLE HOTEL
( hotel_no INT NOT NULL,
hotel_name CHAR  NOT NULL,
city_location CHAR  NOT NULL,
Primary Key (hotel_no),
UNIQUE (hotel_no, hotel_name));

Create TABLE BOOKINGS
( arrival_date DATE,
departure_date DATE,
guest_no INT NOT NULL,
primary key (arrival_date));

Create TABLE ROOMS
( room_no INT NOT NULL,
room_type CHAR NOT NULL,
price DECIMAL (10,2),
Primary Key (room_no));

Create TABLE GUESTS
( guest_no INT NOT NULL,
Fname VARCHAR(15) NOT NULL,
Lname VARCHAR(15) NOT NULL,
Address VARCHAR(30) NOT NULL,
Card_no INT NOT NULL,
room_no INT NOT NULL,
Primary Key (guest_no));

Alter TABLE HOTEL 
    modify hotel_name VARCHAR(30);
    
Alter TABLE HOTEL    
    modify city_location VARCHAR(30);

Alter TABLE BOOKINGS
    ADD hotel_no INT;

ALTER TABLE ROOMS
    modify room_type VARCHAR(30);
    
ALTER TABLE HOTEL
    add no_of_rooms INT;

UPDATE HOTEL
    set NO_OF_ROOMS = 15 where HOTEL_NAME = 'Egerton';

UPDATE HOTEL    
    set NO_OF_ROOMS = 20 where HOTEL_NAME = 'Athenaeum';
    
UPDATE HOTEL    
    set NO_OF_ROOMS = 45 where HOTEL_NAME = 'Staybridge Suites';

UPDATE HOTEL     
    set NO_OF_ROOMS = 30 where HOTEL_NAME = 'The Milestone';

UPDATE HOTEL     
    set NO_OF_ROOMS = 40 where HOTEL_NAME = 'Princess St.';
 
UPDATE HOTEL     
    set NO_OF_ROOMS = 25 where HOTEL_NAME = 'Grosvenor Hotel';

    
Insert into HOTEL values (1, 'Egerton', 'London');
Insert into HOTEL values (2, 'Athenaeum', 'Mayfair');
Insert into HOTEL values (3, 'Staybridge Suites', 'Liverpool');
Insert into HOTEL values (4, 'The Milestone', 'London');
Insert into HOTEL values (5, 'Princess St.', 'Manchester');
Insert into HOTEL values (6, 'Grosvenor Hotel', 'London');

Insert into BOOKINGS values (DATE '2017-03-25', DATE '2017-03-31', 231);
Insert into BOOKINGS values (DATE '2017-04-01', DATE '2017-04-22', 013);
Insert into BOOKINGS values (DATE '2017-12-19', DATE '2018-01-01', 109);
Insert into BOOKINGS values (DATE '2017-05-13', DATE '2017-05-17', 626);
Insert into BOOKINGS values (DATE '2017-11-06', DATE '2017-11-28', 004);
Insert into BOOKINGS values (DATE '2018-07-01', DATE '2018-07-31', 325);
Insert into BOOKINGS values (DATE '2018-08-06', DATE '2018-08-20', 745);
Insert into BOOKINGS values (DATE '2018-10-06', DATE '2018-10-24', 130, 3);
Insert into BOOKINGS values (DATE '2018-07-02', DATE '2018-07-12', 222, 6);
Insert into BOOKINGS values (DATE '2018-08-13', DATE '2018-08-21', 552, 2);
Insert into BOOKINGS values (DATE '2018-09-10', DATE '2018-09-20', 755, 5);
Insert into BOOKINGS values (DATE '2018-02-13', DATE '2018-02-28', 745, 1);


Insert into ROOMS values (1234, 'Single', 420.32);
Insert into ROOMS values (0400, 'Double', 617.50);
Insert into ROOMS values (2200, 'Suite', 900.20);
Insert into ROOMS values (0104, 'Single', 325.32);
Insert into ROOMS values (3000, 'Suite', 1282.67);
Insert into ROOMS values (0101, 'Single', 39.00);
Insert into ROOMS values (0201, 'Double', 38.00);
Insert into ROOMS values (0214, 'Double', 35.00);


Insert into GUESTS values (231, 'Smith', 'John', '123 Main', 551239, 1234);
Insert into GUESTS values (626, 'Doe', 'Jane', '246 Terrace', 709123, 3000);
Insert into GUESTS values (005, 'Marvin', 'Rick', '454 St. John', 116969, 2200);
Insert into GUESTS values (004, 'Long', 'Hsu', '94 Main', 223095, 0104);
Insert into GUESTS values (109, 'O Reily', 'Mary', '560 Lake', 626354, 0400);

Select * from HOTEL;

Select HOTEL_NO, HOTEL_NAME, city_location from HOTEL where city_location = 'London';
Select Lname, Fname, address from GUESTS ORDER BY Fname; 
Select room_no, room_type, price from ROOMS where room_type = 'Double' AND Price < 40 ORDER BY price;
Select arrival_date, departure_date, guest_no from BOOKINGS where DEPARTURE_DATE = NULL;
Select count(hotel_name) from HOTEL;
Select AVG(price) "Average Price" from ROOMS;
Select SUM(price) "Total Revenue" from ROOMS where room_type = 'Double';
Select count(Arrival_Date) from BOOKINGS where ARRIVAL_DATE = DATE '2018-08-06' OR ARRIVAL_DATE = DATE '2018-08-13';
Select * from BOOKINGS where hotel_no = 6;
Select HOTEL_NAME, no_of_rooms from HOTEL;
