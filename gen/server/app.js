const express = require('express');
const app = express();
const helmet = require('helmet');
// const cookieParser = require('cookie-parser');
// const log = require('./src/log/logger')(__filename);
// const standings = require('./src/routes/standings');
 const teams = require('./src/routes/teams');
const players = require('./src/routes/players');
// const middleware = require('./src/routes/middleware');
bodyParser = require('body-parser');

app.use(helmet()); //for strict HTTP header
app.use(bodyParser.json()) //to support JSON encoded bodies
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json({ type: 'application/*+json' }))

app.use((err, req, res, next) => {
    if (err) {
      res.status(400).json({error:'Invalid JSON body.'});
    } else {
      next();
    }
});

// Strict origin checking
app.use((req, res, next) => {
    if (req.header('Origin') !== process.env.ORIGIN){
        res.sendStatus(400);
        return;
    }
    next();
});

// Invalid page
app.options('*', (req,res)=>{
    res.end();
});

// ===========================
//      RESTFUL ROUTES
// ===========================

app.use('/teams',teams)
app.use('/players', players);
app.get("/", (req,res) => {
    res.redirect('/players/LeBron/James');
});


app.listen(8000, function() {
	console.log("Server started");
})
