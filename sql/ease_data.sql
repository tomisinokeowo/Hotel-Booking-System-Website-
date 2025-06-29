-- Insert into Branch
INSERT INTO Branch VALUES (1, 'London Central', 'London');
INSERT INTO Branch VALUES (2, 'Manchester North', 'Manchester');
INSERT INTO Branch VALUES (3, 'Birmingham West', 'Birmingham');

-- Insert into Employee
INSERT INTO Employee VALUES (101, 'Alice Johnson', 1);
INSERT INTO Employee VALUES (102, 'Bob Smith', 2);
INSERT INTO Employee VALUES (103, 'Carol White', 3);

-- Insert into Room
INSERT INTO Room VALUES (201, 1, 'Standard', 30, 'Y', NULL, NULL, NULL);
INSERT INTO Room VALUES (202, 1, 'Executive', 50, NULL, 'Y', 'Y', 'Y');
INSERT INTO Room VALUES (203, 2, 'Standard', 20, 'N', NULL, NULL, NULL);
INSERT INTO Room VALUES (204, 2, 'Executive', 40, NULL, 'Y', 'Y', 'N');
INSERT INTO Room VALUES (205, 3, 'Standard', 25, 'Y', NULL, NULL, NULL);

-- Insert into Customer
INSERT INTO Customer VALUES (301, 'John Doe', 'Business', 'john@example.com');
INSERT INTO Customer VALUES (302, 'Jane Brown', 'Standard', 'jane@example.com');
INSERT INTO Customer VALUES (303, 'Mark Green', 'Business', 'mark@example.com');

-- Insert into Booking
INSERT INTO Booking VALUES (401, 301, 202, TO_DATE('2025-05-10', 'YYYY-MM-DD'), TO_DATE('2025-05-12', 'YYYY-MM-DD'));
INSERT INTO Booking VALUES (402, 302, 201, TO_DATE('2025-05-15', 'YYYY-MM-DD'), TO_DATE('2025-05-15', 'YYYY-MM-DD'));
INSERT INTO Booking VALUES (403, 303, 204, TO_DATE('2025-06-01', 'YYYY-MM-DD'), TO_DATE('2025-06-03', 'YYYY-MM-DD'));

-- Insert into Supplier
INSERT INTO Supplier VALUES (501, 'BuffetMasters Ltd', 'Buffet');
INSERT INTO Supplier VALUES (502, 'DecorationPros', 'Decorations');
INSERT INTO Supplier VALUES (503, 'TechMedia Solutions', 'TV/Internet Setup');

-- Insert into BranchSupplier
INSERT INTO BranchSupplier VALUES (1, 501);
INSERT INTO BranchSupplier VALUES (1, 502);
INSERT INTO BranchSupplier VALUES (2, 502);
INSERT INTO BranchSupplier VALUES (2, 503);
INSERT INTO BranchSupplier VALUES (3, 501);
INSERT INTO BranchSupplier VALUES (3, 503);
