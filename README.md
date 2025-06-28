# NorthwindDB Project

## Overview

**NorthwindDB** is a SQL-based relational database system inspired by the classic Northwind Traders sample database. It is designed to simulate a mid-sized wholesale trading company’s operations by modeling entities such as suppliers, products, customers, employees, territories, orders, and shippers.

This project is ideal for practicing SQL, designing data relationships, and understanding transactional business logic commonly found in supply chain and order management systems.

---

## Features

- **Suppliers**: Maintains records of all suppliers providing the products.
- **Products & Categories**: Categorizes inventory items and connects them to suppliers.
- **Customers & Demographics**: Stores customer details and their associated market segments.
- **Orders**: Tracks each customer’s order, including shipment and employee handling.
- **Order Details**: Item-level details for each order, including quantity and discounts.
- **Employees & Territories**: Manages employee assignments to regional sales territories.
- **Shipping**: Records shipping companies used to fulfill customer orders.
- **Regions**: Maps broader geographical data used for assigning territories.

---

## Database Schema

The database contains the following primary tables:

- `Suppliers`
- `Categories`
- `Products`
- `Customers`
- `CustomerDemographics`
- `CustomerDemo` (junction table)
- `Employees`
- `Region`
- `Territories`
- `EmployeeTerritories` (junction table)
- `Shippers`
- `Orders`
- `OrderDetails`

All tables are related using foreign key constraints to ensure data integrity and proper normalization.

---

## Use Cases

- **SQL Practice**: Ideal for learning complex joins, subqueries, aggregates, and relational integrity.
- **Data Modeling**: A hands-on example of a normalized relational database schema.
- **Business Intelligence**: Use for testing dashboards and visualizations (e.g., with Tableau or Power BI).
- **App Prototyping**: Backend foundation for web apps related to retail, CRM, or logistics.

---

## How to Use

1. Clone this repository.
2. Open your SQL client (MySQL Workbench, phpMyAdmin, etc.).
3. Execute the provided `NorthwindDB.sql` script to create the database and all associated tables.
4. Start populating with sample data or connect your app to begin operations.

---

## Requirements

- MySQL Server 8.0+ or compatible RDBMS
- SQL Client (Workbench, DBeaver, etc.)


---

## Future Enhancements

- Add triggers for inventory and order validations
- Implement stored procedures for shipping and reporting automation
- Insert sample data for simulation and testing
- Build an interactive dashboard using Flask or Node.js

---

## License

This project is open-source and free to use for educational or personal purposes.

---

## Author

**Maurice Hazan**  
📧 [mauriceh01@hotmail.com](mailto:mauriceh01@hotmail.com)  
🔗 [GitHub](https://github.com/mauriceh01)

---
