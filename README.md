# csci5707proj
csci5707 Team 9 project COVID-19 Informational Website

The summary:
1. Install XAMPP 7.4.10 with your appropriate OS
https://www.apachefriends.org/download.html

2. Install NodeJS and npm 14.13.0 with your appropriate OS
https://nodejs.org/en/
Install necessary tools

3. Open XAMPP control panel and switch on the MySQL and Apache Server

4. Add database to the PHPMyAdmin
http://localhost/phpmyadmin

Go to Tab SQL
Run Query:
'''
CREATE DATABASE sitepoint CHARACTER SET utf8 COLLATE utf8_general_ci;
USE sitepoint;

CREATE TABLE authors (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(50),
  city varchar(50),
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO authors (id, name, city) VALUES
(1, 'Michaela Lehr', 'Berlin'),
(2, 'Michael Wanyoike', 'Nairobi'),
(3, 'James Hibbard', 'Munich'),
(4, 'Karolina Gawron', 'Wrocław');

'''

5. Clone all these files to your local project folder

6. Install all prerequisites
Open Terminal and go to the project folder
$ npm install

Optional Steps 7-9
7. Try the /index.js website 
$ node index.js

output:
express server is running at port 3000
DB connection successful!

8. Try http://localhost:3000
output:
Cannot GET /

9. Try http://localhost:3000/employees
output:
[{"id":1,"name":"Michaela Lehr","city":"Berlin"},{"id":2,"name":"Michael Wanyoike","city":"Nairobi"},{"id":3,"name":"James Hibbard","city":"Munich"},{"id":4,"name":"Karolina Gawron","city":"Wrocław"}]

Optional: you can install JSON Formatter Chrome extension for better JSON viewing

10. The templated COVID-19 website is /web/index.html
