-- Run this in MySQL Workbench to temporarily remove the password for 'root'
-- This will make the Chat App work without modifying the source code

-- Temporarily remove password for root
ALTER USER 'root'@'localhost' IDENTIFIED BY '';
FLUSH PRIVILEGES;

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS `db_chatapp`;
USE `db_chatapp`;

-- Drop old tables if they exist
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

-- To restore your password after running the Chat App, execute:
-- ALTER USER 'root'@'localhost' IDENTIFIED BY 'sqllearner18';
-- FLUSH PRIVILEGES; 