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
    res.render('pages/index', {
        // EJS variable and server-side variable
        listnames: listnames
    });
});

app.post('/example_route', function (req, res) {

    mysqlConnection.query('SELECT * FROM usa_population up',(err,rows,fields)=>{
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        }else{
            res.send(rows);
        }
    });
})
