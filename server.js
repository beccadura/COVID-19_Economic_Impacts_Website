// Load Node modules
var express = require('express');
const ejs = require('ejs');
const mysql=require('mysql');
const bodyparser = require('body-parser');

// Initialise Express
var app = express();
app.use(bodyparser.json());

var mysqlConnection = mysql.createConnection({
	host:'localhost',
	user:'root',
	database:'covid_economic_impacts'
});

mysqlConnection.connect((err)=>{
	if(!err)
		console.log('DB connection successful!');
	else
		console.log('DB connection error: '+JSON.stringify(err,undefined,2));
});

// Render static files
app.use(express.static('views'));
// Set the view engine to ejs
app.set('view engine', 'ejs');
// Port website will run on
app.listen(8080,()=>console.log('express server is running at port 8080'));

// *** GET Routes - display pages ***
// Route Route
app.get('/', function (req, res) {
    // Render index page

    mysqlConnection.query('SELECT gc.CountryName, gc.TotalCases, gc.NewCases FROM global_covid gc WHERE gc.Date = "2020-10-25" ORDER BY gc.CountryName',(err,global_covid,fields)=>{
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        }else{
            res.render('pages/index', {
                // EJS variable and server-side variable
                global_covid: global_covid
            });
        }
    });
});

app.post('/global_covid', function (req, res) {

    mysqlConnection.query('SELECT gc.CountryName, gc.TotalCases, gc.NewCases FROM global_covid gc WHERE gc.Date = "2020-10-25" ORDER BY gc.CountryName desc limit 30',(err,rows,fields)=>{
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        }else{
            res.send(rows);
        }
    });
})

app.post('/global_population', function (req, res) {

    mysqlConnection.query('SELECT gc.CountryName, gc.TotalCases, gc.NewCases FROM global_covid gc WHERE gc.Date = "2020-10-25" ORDER BY gc.CountryName desc limit 30',(err,rows,fields)=>{
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        }else{
            res.send(rows);
        }
    });
})

