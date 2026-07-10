# 🏆 Oscars Database Management System

A command-line **Python & MySQL** application for managing and querying an Oscars database. The system provides complete **CRUD (Create, Read, Update, Delete)** functionality while demonstrating the use of **SQL Views, Stored Procedures, Triggers, Joins, Aggregate Queries, and Relational Database Design**.

This project was developed as a university database systems project to demonstrate database design principles and advanced SQL features using Python as the front-end interface.

---

## 📌 Features

### Database Operations

- View all database tables
- Describe table structures
- Display records from every table
- Insert new records
- Update existing records
- Delete records

---

### Advanced Database Features

#### SQL Views

- Award Winners by Ceremony
- Film Nomination Statistics

#### SQL Queries

The system includes multiple predefined SQL queries such as:

- Winners for a selected ceremony
- Nominations and wins per film
- Films grouped by language
- Person count by country
- Gender distribution
- Most nominated films
- Countries with the most Oscar winners
- Acting roles by film
- Gender breakdown of Oscar winners
- Films from a selected ceremony

#### Stored Procedures

- Display ceremony winners
- Display a person's complete filmography

#### Database Triggers

Business rules are enforced through MySQL triggers, including:

- Preventing multiple winners for the same award
- Validating nominee categories
- Duplicate prevention
- Data validation
- Automatic business rule enforcement

---

## 🗄 Database Schema

The database consists of **7 relational tables**.

| Table | Description |
|--------|-------------|
| Ceremony | Oscar ceremony information |
| Country | Country details |
| Person | Actors, directors and other nominees |
| Film | Film information |
| Award | Oscar award categories |
| Nominee | Oscar nominations and winners |
| Act | Relationship between people and films |

---

## 🛠 Technologies Used

- Python 3
- MySQL
- MySQL Connector for Python
- SQL
- Stored Procedures
- Views
- Triggers

---

## 📂 Project Structure

```
Oscar-Database-System/
│
├── Oscar.py                 # Main Python application
├── createTable.sql          # Database creation script
├── procedures.sql           # Stored procedures
├── triggers.sql             # Database triggers
├── views.sql                # SQL views (if included)
├── insertData.sql           # Sample data (if included)
└── README.md
```

---

## ⚙ Requirements

- Python 3.x
- MySQL Server
- mysql-connector-python

Install the required package:

```bash
pip install mysql-connector-python
```

---

## 🚀 Setup Instructions

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/Oscar-Database-System.git
```

### 2. Create the database

Execute the SQL scripts in the following order:

1. `createTable.sql`
2. `insertData.sql` (if available)
3. `views.sql`
4. `procedures.sql`
5. `triggers.sql`

### 3. Configure MySQL

Ensure your MySQL server is running.

The default connection settings are:

```
Host: 127.0.0.1
Database: Oscars
Username: root
Password: root1234
```

These can be changed when launching the application.

### 4. Run the application

```bash
python Oscar.py
```

---

## 🖥 Main Menu

```
1. View all tables
2. Describe tables
3. Show data
4. Advanced Features
    • Views
    • SQL Queries
    • Stored Procedures
5. Insert Data
6. Update Data
7. Delete Data
8. Exit
```

---

## 📖 Learning Outcomes

This project demonstrates:

- Relational Database Design
- Entity Relationships
- Primary & Foreign Keys
- SQL CRUD Operations
- SQL Joins
- Aggregate Functions
- GROUP BY and HAVING
- SQL Views
- Stored Procedures
- Database Triggers
- Python Database Connectivity
- Interactive Command-Line Interface (CLI)

---

## 📷 Sample Screens

Example:

- Main Menu
- View Tables
- SQL Query Results
- Stored Procedure Output
- CRUD Operations

*(Screenshots can be added here later.)*

---

## 🎯 Future Improvements

- Graphical User Interface (GUI)
- Search functionality
- Authentication and user roles
- Export reports to CSV/PDF
- Dashboard with database statistics

---

## 👨‍💻 Author

**Rayan Mendis**

Database Systems Project

---

## 📄 License

This project is intended for educational purposes.
