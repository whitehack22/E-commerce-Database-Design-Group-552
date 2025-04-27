# E-commerce Database Design - Group 552

📦 **E-commerce Database Design Project**

## 🎯 Overview
This repository contains the completed design and implementation of an e-commerce database. The project includes an **Entity-Relationship Diagram (ERD)** and the corresponding SQL script to create the database schema.

---

## 📂 Repository Contents

- **`README.md`** – Project documentation (this file).
- **`e-commerce.drawio`** – The Entity-Relationship Diagram (ERD) illustrating the database structure.
- **`ecommerce.sql`** – The SQL script to create the database schema.

---

## 🗃️ Database Overview

The e-commerce database is designed to support the following functionalities:

1. **Product Management**:
   - **`product_image`**: Stores product image URLs or file references.
   - **`product_category`**: Classifies products into categories (e.g., clothing, electronics).
   - **`product`**: Stores general product details (e.g., name, brand, base price).
   - **`product_item`**: Represents purchasable items with specific variations.
   - **`product_variation`**: Links a product to its variations (e.g., size, color).

2. **Attributes and Options**:
   - **`color`**: Manages available color options.
   - **`size_category`**: Groups sizes into categories (e.g., clothing sizes, shoe sizes).
   - **`size_option`**: Lists specific sizes (e.g., S, M, L, 42).
   - **`product_attribute`**: Stores custom attributes (e.g., material, weight).
   - **`attribute_category`**: Groups attributes into categories (e.g., physical, technical).
   - **`attribute_type`**: Defines types of attributes (e.g., text, number, boolean).

3. **Brand Management**:
   - **`brand`**: Stores brand-related data.

---

## 🚀 How to Use This Repository

### 1️⃣ View the Entity-Relationship Diagram (ERD)
The ERD provides a visual representation of the database structure, including tables, relationships, and constraints. To view the ERD:
- Open the `e-commerce.drawio` file using tools like **draw.io**, **Lucidchart**, or **dbdiagram.io**.

### 2️⃣ Create the Database Schema
To create the database schema:
1. Ensure you have a MySQL database server installed and running.
2. Open the `ecommerce.sql` file in a MySQL client (e.g., MySQL Workbench, phpMyAdmin, or the MySQL command line).
3. Execute the script to create the database and its tables.

### 3️⃣ Customize or Extend the Database
You can modify the `ecommerce.sql` script to customize the database for your specific needs. Ensure any changes align with the ERD to maintain consistency.

---

## 💡 Key Features

- **Scalable Design**: The database is designed to support a wide range of e-commerce functionalities.
- **Normalization**: The schema follows database normalization principles to reduce redundancy and improve data integrity.
- **Custom Attributes**: Flexible support for product attributes and variations.

---

## 🛠️ Tools Used

- **ERD Design**: Created using **draw.io**.
- **Database Implementation**: SQL script written for **MySQL**.

---

## 🤝 Contribution

This project was collaboratively designed and implemented by Group 552. If you have suggestions or improvements, feel free to fork the repository and submit a pull request.

---

## 📧 Contact

For any questions or feedback, please contact the project contributors via GitHub.

---

Happy exploring! 🎉