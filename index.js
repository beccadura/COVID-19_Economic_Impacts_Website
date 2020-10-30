const mysql=require('mysql');
const express=require('express');
const bodyparser = require('body-parser');

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

app.listen(3000,()=>console.log('express server is running at port 3000'));

app.get('/employees',(req,res)=>{
	mysqlConnection.query('SELECT * FROM usa_population up where up.state_id = 1',(err,rows,fields)=>{
		if(!err)
			res.send(rows);
		else
			console.log(err);
	})
});

app.get('/employees/:id',(req,res)=>{
	mysqlConnection.query('SELECT * FROM authors a WHERE a.id = ?',[req.params.id],(err,rows,fields)=>{
		if(!err)
			res.send(rows);
		else
			console.log(err);
	})
});