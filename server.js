// Load Node modules
var express = require('express');
const ejs = require('ejs');
const mysql=require('mysql');
const bodyparser = require('body-parser');

// Initialise Express
var app = express();
app.use(bodyparser.json());

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
    mysqlConnection.query('SELECT s.StateName, sc.TotalDeaths, sc.TotalICU, sc.TotalHospitalized, sc.TotalNegative, sc.Positive, sc.TotalOnVentilator, sc.Recovered, sc.TotalTests FROM state_covid sc JOIN states s ON sc.State = s.StateCode WHERE sc.Date = "2020-11-18" ORDER BY s.StateName', (err, state_covid, fields) => {
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        }

        // State Unemployment query (must be nested so that the global_covid and state_unemployment render simultaneously
        mysqlConnection.query('SELECT cp.CountryName, cp.2016Population FROM country_population cp ORDER BY cp.CountryName LIMIT 30', (err, country_population, fields) => {
            if (err) {
                console.error('error connecting: ' + err.stack);
                return;
            }
            mysqlConnection.query('SELECT ci.Commodity, ci.2019Jan, ci.2019Feb, ci.2019Mar, ci.2019Apr, ci.2019May, ci.2019Jun, ci.2019Jul, ci.2019Aug, ci.2019Sep, ci.2019Oct, ci.2019Nov, ci.2019Dec, ci.2020Jan, ci.2020Feb, ci.2020Mar, ci.2020Apr, ci.2020May, ci.2020Jun, ci.2020Jul, ci.2020Aug, ci.2020Sep FROM country_imports ci WHERE (ci.Commodity LIKE "0 % " OR ci.Commodity LIKE "1 % " OR ci.Commodity LIKE "2 % " OR ci.Commodity LIKE "3 % " OR ci.Commodity LIKE "4 % " OR ci.Commodity LIKE "5 % " OR ci.Commodity LIKE "6 % " OR ci.Commodity LIKE "7 % " OR ci.Commodity LIKE "8 % " OR ci.Commodity LIKE "9 % ") AND ci.CountryCode = "US"', (err, country_imports, fields) => {
                if (err) {
                    console.error('error connecting: ' + err.stack);
                    return;
                }
                mysqlConnection.query('SELECT su.StateName, su.InitialClaims, su.ContinuedClaims, su.InsuredUnemploymentRate FROM state_unemployment su WHERE su.FiledWeekEnded = "2020-10-31" ORDER BY su.StateName', (su_err, state_unemployment, su_fields) => {
                    if (su_err) {
                        console.error('error connecting: ' + su_err.stack);
                        return;
                    } else {
                        res.render('pages/index', {
                            // EJS variable and server-side variable
                            state_covid: state_covid,
                            country_population: country_population,
                            country_imports: country_imports,
                            state_unemployment: state_unemployment
                        });
                    }
                });
            });
        });
    });
});


app.post('/state_covid', function (req, res) {

    mysqlConnection.query('SELECT s.StateName, sc.TotalDeaths, sc.TotalICU, sc.TotalHospitalized, sc.TotalNegative, sc.Positive, sc.TotalOnVentilator, sc.Recovered, sc.TotalTests FROM state_covid sc JOIN states s ON sc.State = s.StateCode WHERE sc.Date = "2020-11-18" ORDER BY sc.Positive DESC LIMIT 25', (err, rows, fields) => {
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        } else {
            res.send(rows);
        }
    });
})

app.post('/country_population', function (req, res) {

    mysqlConnection.query('SELECT cp.CountryName, cp.2019Population, cp.2020Population FROM country_population cp JOIN (SELECT gc.CountryCode FROM global_covid gc WHERE gc.Date = "2020-11-18" ORDER BY gc.TotalDeaths desc LIMIT 30) a ON a.CountryCode = cp.CountryCode WHERE cp.2020Population IS NOT NULL ORDER BY cp.2020Population DESC LIMIT 25', (err, rows, fields) => {
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        } else {
            res.send(rows);
        }
    });
})

app.post('/country_imports', function (req, res) {

    mysqlConnection.query('SELECT ci.Commodity, ci.2019Jan, ci.2019Feb, ci.2019Mar, ci.2019Apr, ci.2019May, ci.2019Jun, ci.2019Jul, ci.2019Aug, ci.2019Sep, ci.2019Oct, ci.2019Nov, ci.2019Dec, ci.2020Jan, ci.2020Feb, ci.2020Mar, ci.2020Apr, ci.2020May, ci.2020Jun, ci.2020Jul, ci.2020Aug, ci.2020Sep FROM country_imports ci WHERE (ci.Commodity LIKE "0 % " OR ci.Commodity LIKE "1 % " OR ci.Commodity LIKE "2 % " OR ci.Commodity LIKE "3 % " OR ci.Commodity LIKE "4 % " OR ci.Commodity LIKE "5 % " OR ci.Commodity LIKE "6 % " OR ci.Commodity LIKE "7 % " OR ci.Commodity LIKE "8 % " OR ci.Commodity LIKE "9 % ") AND ci.CountryCode = "US"', (err, rows, fields) => {
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        } else {
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
                            gc.Date = '2020-11-18'`, (err, rows, fields) => {
        if (err) {
            console.error('error connecting: ' + err.stack);
            return;
        } else {
            const diff = process.hrtime(time);
            console.log(`Benchmark took ${diff[0] * NS_PER_SEC + diff[1]} seconds`);
            res.send({
                data: rows,
                elapsed: diff[0] * NS_PER_SEC + diff[1]
            });
        }
    });
})