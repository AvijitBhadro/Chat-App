# Chat App Setup Instructions

This document contains instructions for setting up the Chat App, which requires a MySQL database connection.

## Database Setup

The Chat App is configured to connect to a MySQL database with:
- Username: `root`
- Password: (no password)
- Database: `db_chatapp`

Follow one of these options to set up your MySQL for the application:

### Option 1: Create a database with no password for MySQL root user

If you're working on a development environment, the easiest way is to temporarily remove the password for the root user:

```sql
-- Run in MySQL Workbench
ALTER USER 'root'@'localhost' IDENTIFIED BY '';
FLUSH PRIVILEGES;

-- Create the database
CREATE DATABASE IF NOT EXISTS `db_chatapp`;
USE `db_chatapp`;

-- Initialize the tables (run the user.sql script from the script_database folder)
```

### Option 2: Create a special user with no password

If you don't want to change your root password, you can create a new user for the application:

```sql
-- Run in MySQL Workbench
CREATE USER IF NOT EXISTS 'chatapp_user'@'localhost' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON db_chatapp.* TO 'chatapp_user'@'localhost';
FLUSH PRIVILEGES;

-- Create the database
CREATE DATABASE IF NOT EXISTS `db_chatapp`;
USE `db_chatapp`;

-- Initialize the tables (run the user.sql script from the script_database folder)
```

Then modify the DatabaseConnection.java file to use 'chatapp_user' instead of 'root'.

## Running the Application in NetBeans

1. Open the project in NetBeans
2. Make sure MySQL is running with one of the configurations above
3. First run the server project
4. Then run the client project

## Running the Compiled JAR Files

1. Make sure MySQL is running with one of the configurations above
2. Run the server:
   ```
   java -jar Chat-App/jar/server/server.jar
   ```
3. Run the client in another terminal:
   ```
   java -jar Chat-App/jar/client/client.jar
   ```

## Login Information

After setting up the database, you can use these credentials to log in:
- Username: admin, Password: admin
- Username: root, Password: 123456789 