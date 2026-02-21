-- Table Creation

CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    Phone VARCHAR2(15) NOT NULL,
    Email VARCHAR2(100),
    Address VARCHAR2(200)
);

CREATE TABLE MenuItems (
    ItemID NUMBER PRIMARY KEY,
    ItemName VARCHAR2(100) NOT NULL,
    Price NUMBER(10, 2) NOT NULL,
    Availability CHAR(1) CHECK (Availability IN ('Y', 'N'))
);

CREATE TABLE Orders (
    OrderID NUMBER PRIMARY KEY,
    OrderDate DATE DEFAULT SYSDATE,
    CustomerID NUMBER NOT NULL,
    TotalAmount NUMBER(10, 2),
    Status VARCHAR2(50) DEFAULT 'Pending',
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID NUMBER PRIMARY KEY,
    OrderID NUMBER NOT NULL,
    ItemID NUMBER NOT NULL,
    Quantity NUMBER NOT NULL,
    Subtotal NUMBER(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ItemID) REFERENCES MenuItems(ItemID)
);

CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    Role VARCHAR2(50),
    HireDate DATE DEFAULT SYSDATE,
    Phone VARCHAR2(15)
);

CREATE TABLE Reservations (
    ReservationID NUMBER PRIMARY KEY,
    CustomerID NUMBER NOT NULL,
    ReservationDate DATE NOT NULL,
    NumberOfGuests NUMBER NOT NULL,
    Status VARCHAR2(50) DEFAULT 'Confirmed',
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
