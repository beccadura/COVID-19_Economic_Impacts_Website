# csci5707proj
## csci5707 Team 9 project COVID-19 Informational Website

### The Steps:
1. Install XAMPP 7.4.10 with your appropriate OS
https://www.apachefriends.org/download.html

2. Install NodeJS and npm 14.13.0 with your appropriate OS
https://nodejs.org/en/
Install necessary tools

3. Open XAMPP control panel and switch on the MySQL and Apache Server

4. Add database to the PHPMyAdmin
http://localhost/phpmyadmin

Go to Tab SQL and Run Query:

```SQL
CREATE DATABASE sitepoint CHARACTER SET utf8 COLLATE utf8_general_ci;
USE sitepoint;
```
There are some datasets inside the sql folder.
This is an sqldump file, you can just run it to add the dataset to your local mysql server.
Make sure it goes to sitepoint database.

5. Clone all these files to your local project folder

6. Install all prerequisites
Open Terminal and go to the project folder
```
$ npm install
```
7. start the template website (this uses server.js). remember, do step (3) Open XAMPP control panel and switch on the MySQL and Apache Server
```
$ npm start
```
output:
express server is running at port 8080
DB connection successful!

8. Try http://localhost:8080
if all goes well, should be the same with the screenshot
