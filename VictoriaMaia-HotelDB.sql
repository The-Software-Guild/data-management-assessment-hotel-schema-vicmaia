/*
Victoria Maia
Data Management Assessment Hotel Schema
Aspire For Women
*/


-- drop databse in case we need to start over

DROP DATABASE IF EXISTS VictoriaMaiaHotelDB;
CREATE DATABASE VictoriaMaiaHotelDB;

USE VictoriaMaiaHotelDB;

-- drop tables in case we need to rerun the program
DROP TABLE IF EXISTS RoomAmenity;
DROP TABLE IF EXISTS Reservations;
DROP TABLE IF EXISTS Guests;
DROP TABLE IF EXISTS Amenities;
DROP TABLE IF EXISTS RoomData;



CREATE TABLE IF NOT EXISTS RoomData(
    roomID INT PRIMARY KEY NOT NULL,
    roomType ENUM('DOUBLE', 'SINGLE', 'SUITE'),
    isAdaAccessible BOOLEAN NOT NULL,
    standardOccupancy INT,
    maximumOccupancy INT,
    basePrice DECIMAL(7,2),
    extraPerson DECIMAL(7,2) NULL

);

CREATE TABLE IF NOT EXISTS Guests(
    guestID INT PRIMARY KEY  NOT NULL,
    guestName VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(50),
    state CHAR(2),
    zipCode CHAR(5),
    phoneNumber CHAR(20)
);


CREATE TABLE Reservations(
    reservationID INT PRIMARY KEY NOT NULL,
    roomID INT NOT NULL,
    guestID INT NOT NULL,
    numberOfAdults INT,
    numberOfChildren INT,
    startDate DATE,
    endDate DATE,
    totalRoomCost DECIMAL(20,2),
    FOREIGN KEY (roomID) REFERENCES RoomData(roomID),
    FOREIGN KEY (guestID) REFERENCES Guests(guestID)
    
);


CREATE TABLE Amenities(
    amenityID INT PRIMARY KEY NOT NULL,
    amenityType CHAR(50)
);

-- this table references RoomData and Amentines to get the room number and amenity ID.
CREATE TABLE RoomAmenity(
    roomID INT,
    amenityID INT,
    PRIMARY KEY (roomID, amenityID),
    FOREIGN KEY (roomID) REFERENCES RoomData(roomID),
    FOREIGN KEY (amenityID) REFERENCES Amenities(amenityID)

);