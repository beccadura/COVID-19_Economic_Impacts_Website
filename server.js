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

    // Global Covid query
    mysqlConnection.query('SELECT gc.CountryName, gc.TotalCases, gc.NewCases, gc.TotalDeaths, gc.NewDeaths FROM global_covid gc WHERE gc.Date = "2020-11-18" ORDER BY gc.CountryName',(gc_err,global_covid,gc_fields)=>{
        if (gc_err) {
            console.error('error connecting: ' + gc_err.stack);
            return;
        }
	
	// State Unemployment query (must be nested so that the global_covid and state_unemployment render simultaneously
	mysqlConnection.query('SELECT su.StateName, su.InitialClaims, su.ContinuedClaims, su.InsuredUnemploymentRate FROM state_unemployment su WHERE su.FiledWeekEnded = "2020-10-31" ORDER BY su.StateName',(su_err,state_unemployment,su_fields)=>{
            if (su_err) {
		console.error('error connecting: ' + su_err.stack);
		return;
            }else{
		res.render('pages/index', {
                    // EJS variable and server-side variable
                    global_covid: global_covid,
		    state_unemployment: state_unemployment
		});
            }
	});
    });
});

app.post('/global_covid', function (req, res) {

    mysqlConnection.query('SELECT gc.CountryName, gc.TotalCases, gc.TotalDeaths FROM global_covid gc WHERE gc.Date = "2020-11-18" ORDER BY gc.TotalDeaths desc limit 30',(err,rows,fields)=>{
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        }else{
            res.send(rows);
        }
    });
})

app.post('/global_population', function (req, res) {

    mysqlConnection.query('SELECT cp.CountryName, cp.2019Population, cp.2020Population FROM country_population cp JOIN (SELECT gc.CountryCode FROM global_covid gc WHERE gc.Date = "2020-11-18" ORDER BY gc.TotalDeaths desc LIMIT 30) a ON a.CountryCode = cp.CountryCode WHERE cp.2020Population IS NOT NULL',(err,rows,fields)=>{
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        }else{
            res.send(rows);
        }
    });
})

app.post('/worldmap', function (req, res) {
    const NS_PER_SEC = 1e9;
    const time = process.hrtime();
    mysqlConnection.query(`select
                                cp.CountryCode_iso2 as CountryCode,
                                gc.TotalCases,
                                gc.TotalDeaths,
                                gc.MedianAge,
                                cp.pop_2019,
                                cp.pop_2020
                            from
                                global_covid gc
                            join (
                                select
                                    c1.CountryCode_iso2,
                                    cp1.2019Population as pop_2019,
                                    cp1.2020Population as pop_2020,
                                    cp1.CountryCode
                                from
                                    country_population cp1
                                join countries c1 on
                                    c1.CountryCode_iso3 = cp1.CountryCode )cp on
                                cp.CountryCode = gc.CountryCode
                            where
                                gc.Date = '2020-11-18'`,(err,rows,fields)=>{
            if (err) {
                console.error('error connecting: ' + err.stack);
                return;
            }else{
                const diff = process.hrtime(time);
                console.log(`Benchmark took ${diff[0] * NS_PER_SEC + diff[1]} seconds`);
                res.send({
                    data: rows,
                    elapsed: diff[0] * NS_PER_SEC + diff[1]
                });
            }
        });

   
})

