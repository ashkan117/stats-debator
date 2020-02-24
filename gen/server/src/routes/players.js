var express = require('express');
const NBA = require("nba");
var router = express.Router();

const curry = NBA.findPlayer('Stephen Curry');

router.get('/', () => {
    {
        NBA.stats.playerInfo({ PlayerID: curry.playerId }).then(console.log);
    }
});

router.get('/:firstName/:lastName', (req,res) => {
  {
      console.log(req.params)
      console.log(req.params.firstName)
      console.log(req.params.lastName)
      const player = NBA.findPlayer(req.params.firstName + ' ' + req.params.lastName);
      console.log(player.playerId)
      NBA.stats.playerInfo({ PlayerID: player.playerId }).then((playerInfo) => {
          res.send(playerInfo);
      });
  }
});
// app.get('/shmrk/product/:product_id', productRoutes. getProductById);


console.log(curry);
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