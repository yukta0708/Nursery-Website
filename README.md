Plant Nursery E-Commerce Web Application

A full-stack web application developed using Java (Servlet, JSP), Maven, MySQL, HTML, CSS, Bootstrap, and JavaScript that allows users to explore and purchase plants online.

The system provides product listing, search functionality, shopping cart, order management, and admin features to manage plant inventory efficiently.

This project demonstrates practical implementation of Java web development, MVC architecture, CRUD operations, and JDBC database connectivity.

🚀 Features
User Module
User Registration and Login
Browse plant products
Search plants
View plant details
Add to Cart
Place Order
View order details
Update profile
Contact / send message
Admin Module
Add new plant product
Update plant details
Delete product
Manage orders
Manage users
View messages
🛠 Technologies Used
Backend
Java Servlet
JSP (Java Server Pages)
JDBC
Maven
Frontend
HTML
CSS
Bootstrap
JavaScript
Database
MySQL
Server
Apache Tomcat 9 or 10
IDE
Eclipse IDE
⚙️ Prerequisites / Requirements

Make sure the following software is installed:

JDK 8
Apache Tomcat 9 or 10
Eclipse IDE (Enterprise Edition recommended)
MySQL Server
MySQL Workbench
Maven
Web Browser (Chrome / Edge)
📂 Project Structure (Maven)
plant-project
│
├── src/main/java
│   ├── com.user.servlet
│   ├── com.entity
│   ├── com.DAO
│   └── com.DB
│
├── src/main/webapp
│   ├── jsp pages
│   ├── css
│   ├── js
│   ├── images
│   └── WEB-INF
│
├── pom.xml
└── README.md
🗄 Database Structure

Create database in MySQL:

CREATE DATABASE plant_db;
Tables in Database
user → stores user information
product → stores plant product details
cart → stores cart items
order → stores order details
msg → stores contact messages

Database structure:

plant_db
│
├── user
├── product
├── cart
├── order
└── msg

After creating database, run SQL queries to create tables or import tables using MySQL Workbench.

▶️ How to Run Project
Step 1: Clone Repository
git clone https://github.com/yourusername/plant-project.git

OR download ZIP.

Step 2: Import Project in Eclipse IDE

File → Import → Maven → Existing Maven Project → Select project folder → Finish

Maven will automatically download dependencies.

Step 3: Configure Database Connection

Open file:

src/main/java/com/DB/DBConnect.java

Update database name, username and password:

jdbc:mysql://localhost:3306/plant_db
username = root
password = yourpassword
Step 4: Configure Tomcat Server
Open Eclipse
Go to Servers tab
Add Apache Tomcat 9 or 10
Right click project
Run As → Run on Server
Step 5: Run in Browser
http://localhost:8080/plant-project
