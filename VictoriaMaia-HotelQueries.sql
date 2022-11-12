/*
Victoria Maia
Data Management Assessment Hotel Schema
Aspire For Women
*/


-- 1. Write a query that returns a list of reservations that end in July 2023, including the name of the guest, the room numbers, and the reservation dates

USE VictoriaMaiaHotelDB;

SELECT guestName aGuest, roomID roomNumber, startDate start_date, endDate end_date
FROM  Reservations reservation
JOIN Guests guest
ON reservation.guestID = guest.guestID
WHERE endDate between '2023-07-01' and '2023-07-31' ;
/*
Result for query 1

'Joleen Tison','205','2023-06-28','2023-07-02'
'Walter Holaway','401','2023-07-18','2023-07-21'
'Mack Simmer','303','2023-07-28','2023-07-29'

*/

-- 2. Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservations


SELECT guestName aGuest, reservation.roomID roomNumber, startDate start_date, endDate end_date
FROM Reservations reservation
JOIN Guests guest
ON reservation.guestID = guest.guestID
JOIN RoomData room
ON room.roomID = room.roomID
JOIN RoomAmenity amenity
ON amenity.roomID = room.roomID
WHERE amenityID = 2;

/*
'Victoria Maia','308','2023-02-02','2023-02-04'
'Victoria Maia','308','2023-02-02','2023-02-04'
'Victoria Maia','308','2023-02-02','2023-02-04'
'Victoria Maia','308','2023-02-02','2023-02-04'
'Victoria Maia','308','2023-02-02','2023-02-04'
'Victoria Maia','308','2023-02-02','2023-02-04'
'Victoria Maia','308','2023-02-02','2023-02-04'
'Victoria Maia','308','2023-02-02','2023-02-04'
'Victoria Maia','208','2023-09-16','2023-09-17'
'Victoria Maia','208','2023-09-16','2023-09-17'
'Victoria Maia','208','2023-09-16','2023-09-17'
'Victoria Maia','208','2023-09-16','2023-09-17'
'Victoria Maia','208','2023-09-16','2023-09-17'
'Victoria Maia','208','2023-09-16','2023-09-17'
'Victoria Maia','208','2023-09-16','2023-09-17'
'Victoria Maia','208','2023-09-16','2023-09-17'
'Victoria Maia','206','2023-11-22','2023-11-25'
'Victoria Maia','206','2023-11-22','2023-11-25'
'Victoria Maia','206','2023-11-22','2023-11-25'
'Victoria Maia','206','2023-11-22','2023-11-25'
'Victoria Maia','206','2023-11-22','2023-11-25'
'Victoria Maia','206','2023-11-22','2023-11-25'
'Victoria Maia','206','2023-11-22','2023-11-25'
'Victoria Maia','206','2023-11-22','2023-11-25'
'Victoria Maia','301','2023-11-22','2023-11-25'
'Victoria Maia','301','2023-11-22','2023-11-25'
'Victoria Maia','301','2023-11-22','2023-11-25'
'Victoria Maia','301','2023-11-22','2023-11-25'
'Victoria Maia','301','2023-11-22','2023-11-25'
'Victoria Maia','301','2023-11-22','2023-11-25'
'Victoria Maia','301','2023-11-22','2023-11-25'
'Victoria Maia','301','2023-11-22','2023-11-25'
'Mack Simmer','203','2023-02-05','2023-02-10'
'Mack Simmer','203','2023-02-05','2023-02-10'
'Mack Simmer','203','2023-02-05','2023-02-10'
'Mack Simmer','203','2023-02-05','2023-02-10'
'Mack Simmer','203','2023-02-05','2023-02-10'
'Mack Simmer','203','2023-02-05','2023-02-10'
'Mack Simmer','203','2023-02-05','2023-02-10'
'Mack Simmer','203','2023-02-05','2023-02-10'
'Mack Simmer','303','2023-07-28','2023-07-29'
'Mack Simmer','303','2023-07-28','2023-07-29'
'Mack Simmer','303','2023-07-28','2023-07-29'
'Mack Simmer','303','2023-07-28','2023-07-29'
'Mack Simmer','303','2023-07-28','2023-07-29'
'Mack Simmer','303','2023-07-28','2023-07-29'
'Mack Simmer','303','2023-07-28','2023-07-29'
'Mack Simmer','303','2023-07-28','2023-07-29'
'Mack Simmer','305','2023-08-30','2023-09-01'
'Mack Simmer','305','2023-08-30','2023-09-01'
'Mack Simmer','305','2023-08-30','2023-09-01'
'Mack Simmer','305','2023-08-30','2023-09-01'
'Mack Simmer','305','2023-08-30','2023-09-01'
'Mack Simmer','305','2023-08-30','2023-09-01'
'Mack Simmer','305','2023-08-30','2023-09-01'
'Mack Simmer','305','2023-08-30','2023-09-01'
'Bettyann Seery','305','2023-02-22','2023-02-24'
'Bettyann Seery','305','2023-02-22','2023-02-24'
'Bettyann Seery','305','2023-02-22','2023-02-24'
'Bettyann Seery','305','2023-02-22','2023-02-24'
'Bettyann Seery','305','2023-02-22','2023-02-24'
'Bettyann Seery','305','2023-02-22','2023-02-24'
'Bettyann Seery','305','2023-02-22','2023-02-24'
'Bettyann Seery','305','2023-02-22','2023-02-24'
'Bettyann Seery','401','2023-11-22','2023-11-25'
'Bettyann Seery','401','2023-11-22','2023-11-25'
'Bettyann Seery','401','2023-11-22','2023-11-25'
'Bettyann Seery','401','2023-11-22','2023-11-25'
'Bettyann Seery','401','2023-11-22','2023-11-25'
'Bettyann Seery','401','2023-11-22','2023-11-25'
'Bettyann Seery','401','2023-11-22','2023-11-25'
'Bettyann Seery','401','2023-11-22','2023-11-25'
'Duane Cullison','201','2023-03-06','2023-03-07'
'Duane Cullison','201','2023-03-06','2023-03-07'
'Duane Cullison','201','2023-03-06','2023-03-07'
'Duane Cullison','201','2023-03-06','2023-03-07'
'Duane Cullison','201','2023-03-06','2023-03-07'
'Duane Cullison','201','2023-03-06','2023-03-07'
'Duane Cullison','201','2023-03-06','2023-03-07'
'Duane Cullison','201','2023-03-06','2023-03-07'
'Duane Cullison','203','2023-09-13','2023-09-15'
'Duane Cullison','203','2023-09-13','2023-09-15'
'Duane Cullison','203','2023-09-13','2023-09-15'
'Duane Cullison','203','2023-09-13','2023-09-15'
'Duane Cullison','203','2023-09-13','2023-09-15'
'Duane Cullison','203','2023-09-13','2023-09-15'
'Duane Cullison','203','2023-09-13','2023-09-15'
'Duane Cullison','203','2023-09-13','2023-09-15'
'Karie Yang','302','2023-03-18','2023-03-23'
'Karie Yang','302','2023-03-18','2023-03-23'
'Karie Yang','302','2023-03-18','2023-03-23'
'Karie Yang','302','2023-03-18','2023-03-23'
'Karie Yang','302','2023-03-18','2023-03-23'
'Karie Yang','302','2023-03-18','2023-03-23'
'Karie Yang','302','2023-03-18','2023-03-23'
'Karie Yang','302','2023-03-18','2023-03-23'
'Karie Yang','304','2023-06-17','2023-06-18'
'Karie Yang','304','2023-06-17','2023-06-18'
'Karie Yang','304','2023-06-17','2023-06-18'
'Karie Yang','304','2023-06-17','2023-06-18'
'Karie Yang','304','2023-06-17','2023-06-18'
'Karie Yang','304','2023-06-17','2023-06-18'
'Karie Yang','304','2023-06-17','2023-06-18'
'Karie Yang','304','2023-06-17','2023-06-18'
'Aurore Lipton','202','2023-03-29','2023-03-31'
'Aurore Lipton','202','2023-03-29','2023-03-31'
'Aurore Lipton','202','2023-03-29','2023-03-31'
'Aurore Lipton','202','2023-03-29','2023-03-31'
'Aurore Lipton','202','2023-03-29','2023-03-31'
'Aurore Lipton','202','2023-03-29','2023-03-31'
'Aurore Lipton','202','2023-03-29','2023-03-31'
'Aurore Lipton','202','2023-03-29','2023-03-31'
'Zachery Luechtefeld','304','2023-03-31','2023-04-05'
'Zachery Luechtefeld','304','2023-03-31','2023-04-05'
'Zachery Luechtefeld','304','2023-03-31','2023-04-05'
'Zachery Luechtefeld','304','2023-03-31','2023-04-05'
'Zachery Luechtefeld','304','2023-03-31','2023-04-05'
'Zachery Luechtefeld','304','2023-03-31','2023-04-05'
'Zachery Luechtefeld','304','2023-03-31','2023-04-05'
'Zachery Luechtefeld','304','2023-03-31','2023-04-05'
'Walter Holaway','207','2023-04-23','2023-04-24'
'Walter Holaway','207','2023-04-23','2023-04-24'
'Walter Holaway','207','2023-04-23','2023-04-24'
'Walter Holaway','207','2023-04-23','2023-04-24'
'Walter Holaway','207','2023-04-23','2023-04-24'
'Walter Holaway','207','2023-04-23','2023-04-24'
'Walter Holaway','207','2023-04-23','2023-04-24'
'Walter Holaway','207','2023-04-23','2023-04-24'
'Walter Holaway','401','2023-07-18','2023-07-21'
'Walter Holaway','401','2023-07-18','2023-07-21'
'Walter Holaway','401','2023-07-18','2023-07-21'
'Walter Holaway','401','2023-07-18','2023-07-21'
'Walter Holaway','401','2023-07-18','2023-07-21'
'Walter Holaway','401','2023-07-18','2023-07-21'
'Walter Holaway','401','2023-07-18','2023-07-21'
'Walter Holaway','401','2023-07-18','2023-07-21'
'Wilfred Vise','401','2023-05-30','2023-06-02'
'Wilfred Vise','401','2023-05-30','2023-06-02'
'Wilfred Vise','401','2023-05-30','2023-06-02'
'Wilfred Vise','401','2023-05-30','2023-06-02'
'Wilfred Vise','401','2023-05-30','2023-06-02'
'Wilfred Vise','401','2023-05-30','2023-06-02'
'Wilfred Vise','401','2023-05-30','2023-06-02'
'Wilfred Vise','401','2023-05-30','2023-06-02'
'Wilfred Vise','302','2023-12-24','2023-12-28'
'Wilfred Vise','302','2023-12-24','2023-12-28'
'Wilfred Vise','302','2023-12-24','2023-12-28'
'Wilfred Vise','302','2023-12-24','2023-12-28'
'Wilfred Vise','302','2023-12-24','2023-12-28'
'Wilfred Vise','302','2023-12-24','2023-12-28'
'Wilfred Vise','302','2023-12-24','2023-12-28'
'Wilfred Vise','302','2023-12-24','2023-12-28'
'Maritza Tilton','206','2023-06-10','2023-06-14'
'Maritza Tilton','206','2023-06-10','2023-06-14'
'Maritza Tilton','206','2023-06-10','2023-06-14'
'Maritza Tilton','206','2023-06-10','2023-06-14'
'Maritza Tilton','206','2023-06-10','2023-06-14'
'Maritza Tilton','206','2023-06-10','2023-06-14'
'Maritza Tilton','206','2023-06-10','2023-06-14'
'Maritza Tilton','206','2023-06-10','2023-06-14'
'Maritza Tilton','208','2023-06-10','2023-06-14'
'Maritza Tilton','208','2023-06-10','2023-06-14'
'Maritza Tilton','208','2023-06-10','2023-06-14'
'Maritza Tilton','208','2023-06-10','2023-06-14'
'Maritza Tilton','208','2023-06-10','2023-06-14'
'Maritza Tilton','208','2023-06-10','2023-06-14'
'Maritza Tilton','208','2023-06-10','2023-06-14'
'Maritza Tilton','208','2023-06-10','2023-06-14'
'Joleen Tison','307','2023-03-17','2023-03-20'
'Joleen Tison','307','2023-03-17','2023-03-20'
'Joleen Tison','307','2023-03-17','2023-03-20'
'Joleen Tison','307','2023-03-17','2023-03-20'
'Joleen Tison','307','2023-03-17','2023-03-20'
'Joleen Tison','307','2023-03-17','2023-03-20'
'Joleen Tison','307','2023-03-17','2023-03-20'
'Joleen Tison','307','2023-03-17','2023-03-20'
'Joleen Tison','205','2023-06-28','2023-07-02'
'Joleen Tison','205','2023-06-28','2023-07-02'
'Joleen Tison','205','2023-06-28','2023-07-02'
'Joleen Tison','205','2023-06-28','2023-07-02'
'Joleen Tison','205','2023-06-28','2023-07-02'
'Joleen Tison','205','2023-06-28','2023-07-02'
'Joleen Tison','205','2023-06-28','2023-07-02'
'Joleen Tison','205','2023-06-28','2023-07-02'


*/

-- 3. Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the rooms reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)

SELECT guestName aGuest, reservation.roomID roomNumber, startDate start_date, extraPerson extra_person
FROM Reservations reservation
JOIN Guests guest ON reservation.guestID = guest.guestID
JOIN RoomData room ON room.roomID = room.roomID
WHERE guest.guestID = 9;

/*
Result for query 3

Selected guest: Walter Holaway, returned 36 records

'Walter Holaway','401','2023-07-18','10.00'
'Walter Holaway','207','2023-04-23','10.00'
'Walter Holaway','401','2023-07-18','10.00'
'Walter Holaway','207','2023-04-23','10.00'
'Walter Holaway','401','2023-07-18','10.00'
'Walter Holaway','207','2023-04-23','10.00'
'Walter Holaway','401','2023-07-18','10.00'
'Walter Holaway','207','2023-04-23','10.00'
'Walter Holaway','401','2023-07-18',NULL
'Walter Holaway','207','2023-04-23',NULL
'Walter Holaway','401','2023-07-18',NULL
'Walter Holaway','207','2023-04-23',NULL
'Walter Holaway','401','2023-07-18',NULL
'Walter Holaway','207','2023-04-23',NULL
'Walter Holaway','401','2023-07-18',NULL
'Walter Holaway','207','2023-04-23',NULL
'Walter Holaway','401','2023-07-18','10.00'
'Walter Holaway','207','2023-04-23','10.00'
'Walter Holaway','401','2023-07-18','10.00'
'Walter Holaway','207','2023-04-23','10.00'
'Walter Holaway','401','2023-07-18','10.00'
'Walter Holaway','207','2023-04-23','10.00'
'Walter Holaway','401','2023-07-18','10.00'
'Walter Holaway','207','2023-04-23','10.00'
'Walter Holaway','401','2023-07-18',NULL
'Walter Holaway','207','2023-04-23',NULL
'Walter Holaway','401','2023-07-18',NULL
'Walter Holaway','207','2023-04-23',NULL
'Walter Holaway','401','2023-07-18',NULL
'Walter Holaway','207','2023-04-23',NULL
'Walter Holaway','401','2023-07-18',NULL
'Walter Holaway','207','2023-04-23',NULL
'Walter Holaway','401','2023-07-18','20.00'
'Walter Holaway','207','2023-04-23','20.00'
'Walter Holaway','401','2023-07-18','20.00'
'Walter Holaway','207','2023-04-23','20.00'


*/

-- 4. Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room

SELECT IFNULL(reservation.roomID, room.roomID) roomNumber, reservationID aReservation, totalRoomCost toalCost
FROM Reservations reservation
RIGHT JOIN RoomData room
ON reservation.roomID = room.roomID;

/*

Result for query 4

'201','4','199.99'
'202','7','349.98'
'203','2','999.95'
'203','21','399.98'
'204',NULL,NULL
'205','15','699.96'
'206','12','599.96'
'206','23','449.97'
'207','10','174.99'
'208','13','599.96'
'208','20','149.99'
'301','24','599.97'
'302','6','924.95'
'302','25','699.96'
'303','18','199.99'
'304','8','874.95'
'304','14','184.99'
'305','3','349.98'
'305','19','349.98'
'306',NULL,NULL
'307','5','524.97'
'308','1','299.98'
'401','11','1199.97'
'401','17','1259.97'
'401','22','1199.97'
'402',NULL,NULL



*/

-- 5. Write a query that returns all rooms with a capacity of three or more and that are reserved on any date in April 2023.


SELECT room.roomID roomNumber, room.maximumOccupancy capacity, startDate start_date
FROM RoomData room
JOIN Reservations reservation
ON reservation.roomID = room.roomID
WHERE maximumOccupancy >= 3 AND startDate between '2023-04-01' and '2023-04-30';

-- result for query 5 - returns nothing

-- 6. Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last name.


SELECT guestName aGuest, COUNT(reservations.guestID) numberOfReservations
FROM Reservations reservations
JOIN Guests guest
ON reservations.guestID = guest.guestID
GROUP BY guest.guestID
ORDER BY numberOfReservations DESC;

/*
result for query 6

'Victoria Maia','4'
'Mack Simmer','3'
'Bettyann Seery','2'
'Duane Cullison','2'
'Karie Yang','2'
'Walter Holaway','2'
'Wilfred Vise','2'
'Maritza Tilton','2'
'Joleen Tison','2'
'Aurore Lipton','1'
'Zachery Luechtefeld','1'



*/


-- 7. Write a query that displays the name, address, and phone number of a guest based on their phone number. (choose a phone number from the existing data.)

SELECT guestName aGuest, address guestAddress, city cityName, state stateAbbr, zipCode zip, phoneNumber phone
FROM Guests
WHERE phoneNumber = '(123) 456-7890';

/*
Selected phone number (123) 456-7890, result for query 7:

'Victoria Maia','123 My Street','My City','RI','12345','(123) 456-7890'

*/