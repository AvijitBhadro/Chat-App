# Chat-App
<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Contributors][contributors-shield]][contributors-url]
[![Stargazers][stars-shield]][stars-url]
[![Forks][forks-shield]][forks-url]
[![Apache License][license-shield]][license-url]

Desktop chat app using Java Swing, Networking

# Project for Topics in Java Application Course

Chat application assignment:
- Students develop a chat program (with graphical interface) that includes the following features:
   - Chat user registration (registration from the client application)
   - The program allows a user to chat with multiple other users (who are online) simultaneously.
   - Allow file sending during chat.

(Optional features: group chat, voice chat, webcam)

Submission deadline
 - July 26, 2020
 - Submission content: StudentID.zip 
	+ User guide
	+ Executable JAR files
	+ Ant build file for packaging
	+ Source code
  
# Technologies Used
  
- IDE: Apache Netbeans 12 LTS
- Java Development Kits 11 LTS
- Graphical Interface: Java Swing
- Supports: Multithreading, Network (Local network), File transfer
 
## Project Structure
 
Chat-App
 	|<br>
	+------> Jar: Contains executable JAR files<br>
	|<br>
	+------> Libs: Contains JAR library files that support the program, imported into both server and client projects<br>
	|<br>
	+------> Report: 18120061.pdf report file with detailed explanations beyond what might be covered in the video<br>
	|<br>
	+------> ScriptDatabase: Contains database initialization scripts<br>
	|<br>
	+------> SourceCode: Contains the complete source code of the project<br>
	|<br>
	+------> LTUDJava-CQ2017-2018-NVKhiet-Chat App-Self-Evaluation.xlsx: Excel file for student self-evaluation<br>
	|<br>
	+------> Readme.txt: Usage instructions<br>

## Setup Instructions

The project uses a MySQL database
Account used: root with no password

- Install XAMPP and start Apache and MySQL
- Run the database initialization script
- Go to the Jar folder, start the server.jar file in the server directory and then open client.jar in the client directory

For detailed setup instructions, see the SETUP_INSTRUCTIONS.md file.

# Features and Grading

| No. | Evaluation Criteria                                 | Max Points                  | Score |
|-----|-----------------------------------------------------|----------------------------|-------|
| 1   | User registration feature                           | 1                          | 1     |
| 2   | Login feature with registered account               | 1                          | 1     |
| 3   | Chat                                                | 2                          | 2     |
| 4   | Chat with emoji                                     | 0                          | 0     |
| 5   | Simultaneous chat with multiple users (multiple windows) | 2                    | 2     |
| 6   | File sending (receiver can download and view without errors) | 3                | 3     |
| 7   | Group chat                                          | 1                          | 1     |
| 8   | Voice chat                                          | 0.5                        | 0     |
| 9   | Webcam                                              | 0.5                        | 0     |
| 10  | Others                                              | Password recovery, Kaomoji chat |   |
|     | Total                                               | Max: 12                    | 10/12 |

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/AvijitBhadro/Chat-App?style=flat
[contributors-url]: https://github.com/AvijitBhadro/Chat-App/graphs/contributors

[forks-shield]: https://img.shields.io/github/forks/AvijitBhadro/Chat-App?style=flat
[forks-url]: https://github.com/AvijitBhadro/Chat-App/network/members

[stars-shield]: https://img.shields.io/github/stars/AvijitBhadro/Chat-App?style=flat
[stars-url]: https://github.com/AvijitBhadro/Chat-App/stargazers

[license-shield]: https://img.shields.io/github/license/AvijitBhadro/Chat-App?style=flat
[license-url]: https://github.com/AvijitBhadro/Chat-App/blob/master/LICENSE
