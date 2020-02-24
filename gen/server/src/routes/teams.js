var express = require('express');
const NBA = require("nba");
var router = express.Router();

//const rocketsId = NBA.teamIdFromName('Rockets');

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

// app.get('/shmrk/product/:product_id', productRoutes. getProductById);


//console.log(rockets);
/* logs the following:
{
  firstName: 'Stephen',
  lastName: 'Curry',
  playerId: 201939,
  teamId: 1610612744,
  fullName: 'Stephen Curry',
  downcaseName: 'stephen curry'
}
*/

module.exports = router;