## CSCI5707 Team 9 Project COVID-19 Informational Website

### The Steps:
1. Install XAMPP 7.4.10 with your appropriate OS
https://www.apachefriends.org/download.html

2. Install NodeJS and npm 14.13.0 with your appropriate OS
https://nodejs.org/en/
Install necessary tools.

3. Open XAMPP control panel and switch on the MySQL and Apache Server.

4. Clone this repository to your local project folder.

5. Add database to the PHPMyAdmin
http://localhost/phpmyadmin by creating a new database called "covid_economic_impacts" and using the import tab in PHPMyAdmin to import "covid_economic_impacts.sql" from the Database folder in this repository.

6. Open Terminal and go to your local project folder.

7. Run the following to install the necessary node modules.
```
$ npm install
```

8. Run the following to start the website on your local computer.
```
$ npm start
```

You should receive the following output in the terminal:
```
output:
express server is running at port 8080
DB connection successful!
```

8. Your website should be up and running at: http://localhost:8080
