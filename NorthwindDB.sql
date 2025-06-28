-- ============================================================================================================================================================================================================
-- The NorthwindDB is a comprehensive SQL-based relational database designed to simulate the end-to-end operations of a mid-sized wholesale trading or distribution company. 
-- It provides a real-world business environment where key workflows such as product inventory, supplier relationships, order fulfillment, shipping logistics, customer management, 
-- and employee territories are all interconnected through normalized relational tables.
-- ****  Core Functional Areas & Real-World Capabilities ****
-- * Product & Inventory Management *
--   Tables like Products, Categories, and Suppliers track product availability, unit pricing, inventory levels, categories, and vendor information.
--   Enables businesses to monitor stock, track reorders, manage supplier chains, and assess product lifecycle status (active/discontinued).
-- * Sales & Order Processing *
--   The Orders and OrderDetails tables capture full order transactions — from customer placement to item-level pricing, discounts, and quantities.
--   Freight cost, shipment timing, and destination fields support logistical calculations and carrier coordination.
-- * Customer Relationship Management *
--   Customers and CustomerDemographics support profiling, segmentation, and targeting of customers.
--   Ideal for CRM systems, sales tracking, and personalized marketing efforts based on customer type or region.
-- * Shipping & Fulfillment *
--   Shippers table links orders to logistics providers.
--   Built-in shipment data such as required vs. actual shipped dates help monitor delivery performance and carrier efficiency.
-- * Employee Management & Sales Territories *
--   Employees, EmployeeTerritories, Territories, and Region tables structure the workforce by geographical or sales territory.
--   Enables performance tracking by region and aligns with sales team management, HR planning, and regional coverage analysis.
-- *  Business Intelligence & Reporting Potential *
--   With all relational ties in place, NorthwindDB supports powerful analytics such as:
--   Revenue by product, region, or category
--   Customer order trends
--   Inventory turnover rates
--   Supplier performance
--   Employee and territory sales tracking
--   Freight cost analysis
-- * Use Cases
--   Training Environment: Ideal for developers, analysts, or students learning SQL, relational schema design, and business reporting.
--   Prototyping Business Applications: Excellent backend structure for ERP/CRM dashboards or order management systems.
--   Legacy System Simulation: Emulates classic mid-market business systems still in use today, making it great for modernization or integration projects.
-- * Conclusion
--   The NorthwindDB is more than a schema — it's a robust business simulation tool. Whether used for education, analytics, or prototyping, it reflects the complexity 
--   and interconnectivity found in real-world wholesale and distribution operations. Its modular structure allows for future extensions like invoicing, payments, returns, or inventory forecasting systems.
--
--   Database: NorthwindDB
--   Maurice Hazan
--   06/27/2025
--   
-- ============================================================================================================================================================================================================

CREATE DATABASE NorthwindDB;

USE NorthwindDB;

-- =========================================
-- ****** Suppliers Table ******************
-- =========================================

CREATE TABLE Suppliers (
    SupplierID 				INT PRIMARY KEY AUTO_INCREMENT,
    CompanyName 			VARCHAR(50) NOT NULL,
    ContactName 			VARCHAR(250),
    ContactTitle 			VARCHAR(200),
    Address 				VARCHAR(200),
    City 			        VARCHAR(100),
    Region 				VARCHAR(50),
    PostalCode 				VARCHAR(15),
    Country 				VARCHAR(50),
    Phone 				VARCHAR(12),
    Website		    		VARCHAR(25)
 );

-- ==========================================
-- ****** Categories Table ******************
-- ==========================================

CREATE TABLE Categories (
    CategoryID 				INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName			VARCHAR(50),
    Description				VARCHAR(250)
);

-- ==========================================
-- ****** Products Table ********************
-- ==========================================

CREATE TABLE Products (
    ProductID				INT PRIMARY KEY AUTO_INCREMENT,
    SupplierID				INT,
    CategoryID				INT,
    ProductName				VARCHAR(25) NOT NULL,
    QtyPerUnit				INT,
    UnitPrice				DECIMAL(10, 2),
    UnitsInStock			INT,
    UnitsOnOrder			INT,
    ReorderLevel			VARCHAR(20),
    Discontinued			BOOLEAN,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers (SupplierID),
    FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryID)
);
  
-- ==========================================
-- ****** Region Table **********************
-- ==========================================

CREATE TABLE Region (
    RegionID				INT PRIMARY KEY AUTO_INCREMENT,
    RegionDescription			VARCHAR(100)
);

-- ==========================================
-- ****** Territories Table *****************
-- ==========================================

CREATE TABLE Territories (
    TerritoryID				INT PRIMARY KEY AUTO_INCREMENT,
    RegionID				INT,
    TerritoryDesc			VARCHAR(200),
    FOREIGN KEY (RegionID) REFERENCES Region (RegionID)
);

-- ==========================================
-- ****** Employees Table *******************
-- ==========================================

CREATE TABLE Employees (
    EmployeeID				INT PRIMARY KEY AUTO_INCREMENT,
    LastName				VARCHAR(100),
    FirstName				VARCHAR(100),
    Title				VARCHAR(150),
    TitleOfCourtesy			VARCHAR(100),
    BirthDate				DATE,
    HireDate				DATE,
    Address				VARCHAR(250),
    City				VARCHAR(100),
    Region				VARCHAR(100),
    PostalCode				VARCHAR(10),
    Country				VARCHAR(100),
    Phone				VARCHAR(12)
);    

-- =========================================
-- ****** EmployeeTerritories Table ********
-- =========================================

CREATE TABLE EmployeeTerritories (
    EmployeeID				INT,
    TerritoryID				INT,
    PRIMARY KEY (EmployeeID, TerritoryID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
    FOREIGN KEY (TerritoryID) REFERENCES Territories (TerritoryID)
);

-- =========================================
-- ****** Customoers Table *****************
-- =========================================

CREATE TABLE Customers (
    CustomerID				INT PRIMARY KEY AUTO_INCREMENT,
    CompanyName				VARCHAR(200) NOT NULL,
    ContactName				VARCHAR(200),
    ContactTitle			VARCHAR(20),
    Address				VARCHAR(200),
    City				VARCHAR(200),
    Region				VARCHAR(100),
    PostalCode				VARCHAR(10),
    Country				VARCHAR(20),
    Phone				VARCHAR(12),
    Email				VARCHAR(50)
);

-- ==========================================
-- ****** CustomerDemographics Table ********
-- ==========================================

 CREATE TABLE CustomerDemographics (
    CustomerTypeID			INT PRIMARY KEY AUTO_INCREMENT,
    CustomerDesc			VARCHAR(100)
);

-- ==========================================
-- ****** CustomerDemo Table ****************
-- ==========================================

CREATE TABLE CustomerDemo (
    CustomerID				INT,
    CustomerTypeID			INT,
    PRIMARY KEY (CustomerID, CustomerTypeID),
    FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID),
    FOREIGN KEY (CustomerTypeID) REFERENCES CustomerDemographics (CustomerTypeID)
);

-- ==========================================
-- ****** Shippers Table ********************
-- ==========================================

CREATE TABLE Shippers (
    ShipperID				INT PRIMARY KEY AUTO_INCREMENT,
    CompanyName				VARCHAR(200),
    Phone				VARCHAR(12)
);

  -- ========================================
-- ****** Orders Table **********************
-- ==========================================

CREATE TABLE Orders (
    OrderID				INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID				INT,
    EmployeeID				INT,
    ShipperID				INT,
    OrderDate				DATE,
    RequiredDate			DATE,
    ShippedDate				DATE,
    Freight				DECIMAL(10, 2),			
    ShipName				VARCHAR(100),
    ShipAddress				VARCHAR(250),
    ShipCity				VARCHAR(100),
    ShipRegion				VARCHAR(20),
    ShipPostCode			VARCHAR(10),
    ShipCountry				VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
    FOREIGN KEY (ShipperID)  REFERENCES Shippers (ShipperID)
);

-- ==========================================
-- ****** OrderDetails Table ****************
-- ==========================================

CREATE TABLE OrderDetails (
    OrderID				INT,
    ProductID				INT,
    UnitPrice				DECIMAL(10 ,2),
    OrdQty				INT,
    Discount				DECIMAL(10,2),
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products (ProductID)
);




