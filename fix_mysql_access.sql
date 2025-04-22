-- Run this in MySQL Workbench
-- This script creates a special user that can access the database without a password

-- First create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS `db_chatapp`;

-- Create a user with no password that the application can use
CREATE USER IF NOT EXISTS 'chatapp_user'@'localhost' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON db_chatapp.* TO 'chatapp_user'@'localhost';

-- Import the existing SQL script after running this

-- Drop old tables if they exist
USE `db_chatapp`;
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
	`username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
	`password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user` VALUES('21232F297A57A5A243894A0E4A801FC2', '21232F297A57A5A243894A0E4A801FC2');
INSERT INTO `user` VALUES('3663F89305D85CD3769CC95FEA1CA173', '0051F59967B6E740194807841ECD50F0');
INSERT INTO `user` VALUES('394FE8B385F057037FB704CDC2A50573', '4F825CEC68D11E044F4E7B44D13D9984');
INSERT INTO `user` VALUES('03A9F0EA7BB98050796B649E85481845', '25F9E794323B453285F5181F1B624D02');

DROP TABLE IF EXISTS `recovery_user`;
CREATE TABLE IF NOT EXISTS `recovery_user` (
	`username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
	`password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `recovery_user` VALUES('admin', 'admin');
INSERT INTO `recovery_user` VALUES('lenhutnam298', 'nhutnamhcmus');
INSERT INTO `recovery_user` VALUES('lenus', 'nhutnamhcmus123');
INSERT INTO `recovery_user` VALUES('root', '123456789');

-- Make a modified version of the DatabaseConnection class
-- Create a new modified_DatabaseConnection.java file with:
/*
private DatabaseConnection()throws ClassNotFoundException, SQLException{
    Class.forName("com.mysql.cj.jdbc.Driver");
    connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/db_chatapp?useTimezone=true&useSSL=false&useTimezone=true&serverTimezone=UTC","chatapp_user","");
}
*/ 