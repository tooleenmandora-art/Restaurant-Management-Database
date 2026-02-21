-- Data Insertion

INSERT INTO Customers VALUES (1, 'Ali Ahmed', '0501234567', 'ali@gmail.com', 'Riyadh');
INSERT INTO Customers VALUES (2, 'Sara Khalid', '0559876543', 'sara@gmail.com', 'Jeddah');
INSERT INTO Customers VALUES (3, 'Mohammed Saleh', '0538765432', NULL, 'Dammam');
INSERT INTO Customers VALUES (4, 'Aisha Nasser', '0562345678', 'aisha@gmail.com', 'Makkah');
INSERT INTO Customers VALUES (5, 'Omar Hadi', '0521239876', NULL, 'Abha');
INSERT INTO Customers VALUES (6, 'Noura AlHarbi', '0587654321', 'noura@gmail.com', 'Hail');
INSERT INTO Customers VALUES (7, 'Faisal AlQahtani', '0551234567', 'faisal@gmail.com', 'Tabuk');

INSERT INTO MenuItems VALUES (101, 'Margherita Pizza', 45.00, 'Y');
INSERT INTO MenuItems VALUES (102, 'Chicken Burger', 30.00, 'Y');
INSERT INTO MenuItems VALUES (103, 'Pasta Alfredo', 50.00, 'N');
INSERT INTO MenuItems VALUES (104, 'Caesar Salad', 25.00, 'Y');
INSERT INTO MenuItems VALUES (105, 'Tiramisu', 20.00, 'Y');

INSERT INTO Orders VALUES (1001, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 1, 120.00, 'Completed');
INSERT INTO Orders VALUES (1002, TO_DATE('2024-11-02', 'YYYY-MM-DD'), 2, 75.00, 'Pending');
INSERT INTO Orders VALUES (1003, TO_DATE('2024-11-03', 'YYYY-MM-DD'), 3, 90.00, 'Completed');
INSERT INTO Orders VALUES (1004, TO_DATE('2024-11-04', 'YYYY-MM-DD'), 4, 60.00, 'Cancelled');
INSERT INTO Orders VALUES (1005, TO_DATE('2024-11-05', 'YYYY-MM-DD'), 5, 150.00, 'Completed');
INSERT INTO Orders VALUES (1006, SYSDATE, 7, 200.00, 'Pending');
INSERT INTO Orders VALUES (1007, SYSDATE, 7, 150.00, 'Cancelled');

INSERT INTO OrderDetails VALUES (1, 1001, 101, 2, 90.00);
INSERT INTO OrderDetails VALUES (2, 1001, 104, 1, 25.00);
INSERT INTO OrderDetails VALUES (3, 1002, 102, 3, 90.00);
INSERT INTO OrderDetails VALUES (4, 1003, 103, 2, 100.00);
INSERT INTO OrderDetails VALUES (5, 1005, 105, 5, 100.00);

INSERT INTO Employees VALUES (201, 'Ahmed Hassan', 'Chef', TO_DATE('2020-06-15', 'YYYY-MM-DD'), '0567890123');
INSERT INTO Employees VALUES (202, 'Fatima Ali', 'Waitress', TO_DATE('2021-03-20', 'YYYY-MM-DD'), '0551234567');
INSERT INTO Employees VALUES (203, 'Khalid Ibrahim', 'Manager', TO_DATE('2019-12-10', 'YYYY-MM-DD'), '0549876543');
INSERT INTO Employees VALUES (204, 'Huda Nasser', 'Cashier', TO_DATE('2022-07-25', 'YYYY-MM-DD'), '0534567890');
INSERT INTO Employees VALUES (205, 'Sami Jaber', 'Delivery', TO_DATE('2023-01-05', 'YYYY-MM-DD'), '0527891234');

INSERT INTO Reservations VALUES (301, 1, TO_DATE('2024-12-01', 'YYYY-MM-DD'), 4, 'Confirmed');
INSERT INTO Reservations VALUES (302, 2, TO_DATE('2024-12-02', 'YYYY-MM-DD'), 2, 'Confirmed');
INSERT INTO Reservations VALUES (303, 3, TO_DATE('2024-12-03', 'YYYY-MM-DD'), 5, 'Cancelled');
INSERT INTO Reservations VALUES (304, 4, TO_DATE('2024-12-04', 'YYYY-MM-DD'), 3, 'Confirmed');
INSERT INTO Reservations VALUES (305, 5, TO_DATE('2024-12-05', 'YYYY-MM-DD'), 6, 'Pending');
