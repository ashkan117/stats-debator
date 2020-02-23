const express = require('express');
const app = express();
const helmet = require('helmet');
// const cookieParser = require('cookie-parser');
// const log = require('./src/log/logger')(__filename);
// const standings = require('./src/routes/standings');
// const teams = require('./src/routes/teams');
const players = require('./src/routes/players');
// const middleware = require('./src/routes/middleware');

app.use(helmet()); //for strict HTTP header
// app.use(bodyParser.json()) //to support JSON encoded bodies

app.use((err, req, res, next) => {
    if (err) {
      res.status(400).json({error:'Invalid JSON body.'});
    } else {
      next();
    }
});

// app.use(cookieParser());
// // server listening.

// app.use(cors({
//     origin: process.env.ORIGIN,
//     methods: [ "GET", "POST", "PUT", "DELETE"]
//     })
// )

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

app.use('/players', players);

app.get("/", (req,res) => {
    // var query = req.query.search;
    // var url = ""

});

// app.get('/shmrk/product/:product_id', productRoutes. getProductById);



app.listen(3000, function() {
	console.log("Server started");
})
