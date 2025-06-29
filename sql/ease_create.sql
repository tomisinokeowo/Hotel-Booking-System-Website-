CREATE TABLE Branch (
    BranchID NUMBER PRIMARY KEY,
    BranchName VARCHAR2(100),
    Location VARCHAR2(100)
);

CREATE TABLE Employee (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    BranchID NUMBER,
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);

CREATE TABLE Room (
    RoomID NUMBER PRIMARY KEY,
    BranchID NUMBER,
    RoomType VARCHAR2(20),
    Size NUMBER,
    HasDecorations CHAR(1),
    HasTV CHAR(1),
    HasInternet CHAR(1),
    BuffetOrdered CHAR(1),
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);

CREATE TABLE Customer (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    CustomerType VARCHAR2(20),
    ContactDetails VARCHAR2(200)
);

CREATE TABLE Booking (
    BookingID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    RoomID NUMBER,
    DateFrom DATE,
    DateTo DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);

CREATE TABLE Supplier (
    SupplierID NUMBER PRIMARY KEY,
    SupplierName VARCHAR2(100),
    ProductType VARCHAR2(50)
);

CREATE TABLE BranchSupplier (
    BranchID NUMBER,
    SupplierID NUMBER,
    PRIMARY KEY (BranchID, SupplierID),
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

