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
	database:'sitepoint'
});

mysqlConnection.connect((err)=>{
	if(!err)
		console.log('DB connection successful!');
	else
		console.log('DB connection error: '+JSON.stringify(err,undefined,2));
});

// Render static files
app.use(express.static('web'));
// Set the view engine to ejs
app.set('view engine', 'ejs');
// Port website will run on
app.listen(8080,()=>console.log('express server is running at port 8080'));

// *** GET Routes - display pages ***
// Route Route
app.get('/', function (req, res) {
    var listnames = ["Louise", "Sadie", "Erik", "Raph", "Gina"];
    // Render index page

    mysqlConnection.query('SELECT gc.country, gc.new_cases, gc.cumulative_cases, gc.new_deaths, gc.cumulative_deaths FROM global_covid gc WHERE gc.date_reported = "2020-10-25" ORDER BY gc.country',(err,global_covid,fields)=>{
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        }else{
            res.render('pages/index', {
                // EJS variable and server-side variable
                listnames: listnames,
                global_covid: global_covid
            });
        }
    });
});

app.post('/global_covid', function (req, res) {

    mysqlConnection.query('SELECT gc.country, gc.new_cases, gc.cumulative_cases, gc.new_deaths, gc.cumulative_deaths FROM global_covid gc WHERE gc.date_reported = "2020-10-25" ORDER BY gc.cumulative_cases desc limit 30',(err,rows,fields)=>{
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        }else{
            res.send(rows);
        }
    });
})

app.post('/global_population', function (req, res) {

    mysqlConnection.query('SELECT gp.country_name, gp.pop_2020, gp.pop_2015 FROM global_population gp WHERE gp.country_type = "Country/Area" ORDER BY gp.pop_2020 desc limit 30',(err,rows,fields)=>{
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        }else{
            res.send(rows);
        }
    });
})

