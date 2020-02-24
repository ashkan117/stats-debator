var express = require('express');
const NBA = require("nba");
var router = express.Router();

//:teamName maps the first paramater to have the name teamName
//All parameters are in req.param
//So req.params.teamName is the first parameter
router.get('/:teamName', (req,res) => {
    {
        console.log(req.params)
        console.log(req.params.teamName)
        const teamId = NBA.teamIdFromName(req.params.teamName);
        NBA.stats.teamStats({ TeamID: teamId }).then((teamInfo) => {
            res.send(teamInfo);
        });
    }
});

module.exports = router;
