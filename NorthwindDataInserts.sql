-- ==============================================================================================================================================================
-- INSERT data you can use for the NorthwindDB schema you posted, keeping the referential integrity intact 
-- (i.e., child tables reference existing parent records). This includes a few records per table so you can test your database structure and queries:
-- 
-- 
-- Maurice Hazan
-- 06/27/2025
-- ===============================================================================================================================================================

INSERT INTO Suppliers (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Website) VALUES
('Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', NULL, 'EC1 4SD', 'UK', '1715552222', 'exoticliquids.co.uk'),
('New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'USA', '5045559933', 'nocajun.com'),
('Grandma Kelly''s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'USA', '3135555735', 'grandmakellys.com');

INSERT INTO Categories (CategoryName, Description) VALUES
('Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
('Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
('Confections', 'Desserts, candies, and sweet breads');

INSERT INTO Products (SupplierID, CategoryID, ProductName, QtyPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
(1, 1, 'Chai', 10, 18.00, 39, 0, '10', FALSE),
(1, 1, 'Chang', 24, 19.00, 17, 40, '25', FALSE),
(2, 2, 'Aniseed Syrup', 12, 10.00, 13, 70, '25', FALSE);

INSERT INTO Region (RegionDescription) VALUES
('Northwest'),
('Northeast'),
('Southwest'),
('Southeast');

INSERT INTO Territories (RegionID, TerritoryDesc) VALUES
(1, 'Portland'),
(2, 'Boston'),
(3, 'Phoenix'),
(4, 'Atlanta');

INSERT INTO Employees (LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, Phone) VALUES
('Davolio', 'Nancy', 'Sales Representative', 'Ms.', '1968-12-08', '1992-05-01', '507 - 20th Ave. E. Apt. 2A', 'Seattle', 'WA', '98122', 'USA', '2065559857'),
('Fuller', 'Andrew', 'Vice President, Sales', 'Dr.', '1952-02-19', '1992-08-14', '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'USA', '2065559482');

INSERT INTO EmployeeTerritories (EmployeeID, TerritoryID) VALUES
(1, 1),
(1, 2),
(2, 3);

INSERT INTO Customers (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Email) VALUES
('Alfreds Futterkiste', 'Maria Anders', 'Sales Representative', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany', '0305550011', 'maria@alfreds.de'),
('Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Owner', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'Mexico', '5555555555', 'ana@trujillo.mx');

INSERT INTO CustomerDemographics (CustomerDesc) VALUES
('Frequent buyer'),
('Online customer'),
('Wholesale account');

INSERT INTO CustomerDemo (CustomerID, CustomerTypeID) VALUES
(1, 1),
(1, 2),
(2, 3);

INSERT INTO Shippers (CompanyName, Phone) VALUES
('Speedy Express', '5035559831'),
('United Package', '5035553199'),
('Federal Shipping', '5035559930');

INSERT INTO Orders (CustomerID, EmployeeID, ShipperID, OrderDate, RequiredDate, ShippedDate, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostCode, ShipCountry) VALUES
(1, 1, 1, '2025-06-01', '2025-06-10', '2025-06-05', 32.38, 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany'),
(2, 2, 2, '2025-06-02', '2025-06-12', '2025-06-06', 11.61, 'Ana Trujillo Emparedados', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'Mexico');

INSERT INTO OrderDetails (OrderID, ProductID, UnitPrice, OrdQty, Discount) VALUES
(1, 1, 18.00, 10, 0.00),
(1, 2, 19.00, 5, 0.05),
(2, 3, 10.00, 20, 0.10);


INSERT INTO Suppliers (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Website) VALUES
('Velazquez-Davis', 'Aaron Harris', 'Furniture conservator/restorer', '573 Quinn Canyon Suite 665', 'Figueroaberg', 'IA', '63369', 'Tuvalu', '898-126-8665', 'griffith-lopez.com'),
('Lee Ltd', 'John Contreras', 'Civil Service administrator', '31159 Victoria Unions Apt. 814', 'Aliciaport', 'CT', '89294', 'Heard Island and McDonald Islands', '001-926-792-', 'gallegos.com'),
('Russell-Page', 'Timothy Lee', 'Armed forces training and education officer', '657 Rose Lake', 'Danielshire', 'MA', '02183', 'Wallis and Futuna', '001-092-641-', 'williams.com');

INSERT INTO Categories (CategoryName, Description) VALUES
('Meeting', 'Discuss learn usually back move raise process particularly.'),
('Heavy', 'Management kind local able agency gun after.'),
('Staff', 'Often rest heavy class thousand structure election.');


INSERT INTO Products (SupplierID, CategoryID, ProductName, QtyPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
(1, 2, 'Already', 9, 62.93, 48, 30, '12', 1),
(2, 5, 'Free', 11, 71.02, 71, 44, '15', 0),
(3, 4, 'Those', 27, 46.40, 11, 40, '13', 1);

INSERT INTO Customers (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Email) VALUES
('Simpson-Lyons', 'Michaela Moore DDS', 'Occupational hygieni', '3598 Freeman Avenue Apt. 249', 'Scottberg', 'NH', '57026', 'Aruba', '4482502859', 'stephaniemccoy@moore.org'),
('Ross, Wells and Foster', 'Robert Williams', 'Geologist, engineeri', '50031 James Burgs Apt. 694', 'North Suzanne', 'AZ', '17315', 'Pakistan', '301.928.7419', 'nwilliams@yahoo.com'),
('Holland-Mullen', 'Jennifer Castillo', 'Scientist, research ', '88168 Michael Mountains', 'Port Crystalmouth', 'MN', '69686', 'Uzbekistan', '371.834.0653', 'rweaver@brooks.com');


INSERT INTO Orders (CustomerID, EmployeeID, ShipperID, OrderDate, RequiredDate, ShippedDate, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostCode, ShipCountry) VALUES
(3, 5, 3, '2025-01-12', '2025-01-20', '2025-01-13', 81.55, 'Guerrero-Riley', '761 Davies Underpass', 'Reidbury', 'OH', '35137', 'Hungary'),
(3, 2, 3, '2024-09-16', '2024-09-19', '2024-09-18', 57.97, 'Bates-Davis', '175 Smith Springs Suite 460', 'Hendersonbury', 'OH', '67548', 'French Guiana'),
(5, 2, 3, '2024-12-06', '2024-12-16', '2024-12-07', 29.41, 'Oneill Inc', '038 Perez Station', 'Port Mark', 'HI', '36265', 'France');



INSERT INTO OrderDetails (OrderID, ProductID, UnitPrice, OrdQty, Discount) VALUES
(7, 7, 27.92, 6, 0.2),
(2, 5, 16.17, 3, 0.2),
(8, 4, 10.40, 9, 0.05);


