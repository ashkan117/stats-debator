var express = require('express');
var DataTransform = require("node-json-transform").DataTransform
const NBA = require("nba");
var router = express.Router();

const curry = NBA.findPlayer('Stephen Curry');

router.get('/', () => {
    {
        NBA.stats.playerInfo({ PlayerID: curry.playerId }).then(console.log);
    }
});

router.get('/profileInfo/:name', (req,res) => {
  {
      console.log(req.params)
      console.log(req.params.name)
      const player = NBA.findPlayer(req.params.name);
      console.log(player.playerId)
      NBA.stats.playerInfo({ PlayerID: player.playerId }).then((playerInfo) => {
          console.log(playerInfo)
          var s = JSON.stringify(playerInfo)
          var obj = JSON.parse(s)
          console.log(obj)
          //Would get last name
          //res.send(obj.commonPlayerInfo[0]["lastName"])
	  console.log(obj)
	  console.log(obj.availableSeasons)
	  var availableSeasonIds = []
	  obj.availableSeasons.map(item => {
		console.log(item)
		  availableSeasonIds .push(item["seasonId"])
	  })
	  console.log(availableSeasonIds)
	  var commonPlayerInfoMap = {
		      list : 'commonPlayerInfo',
		      item: {
			      displayFirstLast:"displayFirstLast",
			      birthdate:"birthdate",
			      school:"school",
			      country:"country",
			      height:"height",
			      weight:"weight",
			      seasonExp:"seasonExp",
			      jersey:"jersey",
			      position:"position",
			      rosterStatus:"rosterstatus",
			      teamId:"teamId",
			      teamName:"teamName",
			      teamAbbreviation:"teamAbbreviation",
			      teamCode:"teamCode",
			      teamCity:"teamCity", 
			      playerCode:"playercode", 
			      fromYear:"fromYear", 
			      toYear:"toYear",
			      dleagueFlag:"dleagueFlag",
			      nbaflag:"nbaFlag",
			      gamesPlayedFlag:"gamesPlayedFlag",
			      draftYear:"draftYear",
			      draftRound:"draftRound",
			      draftNumber:"draftNumber",
			          },
	  }
	  var dataTransform = DataTransform(playerInfo, commonPlayerInfoMap);
	  var result = dataTransform.transform();
	  //result[0]["seasonIds"] = availableSeasonIds
	  console.log(result);
          res.send(result)
          //res.send(obj);
      });
  }
});



router.get('/regularSeasonInfo/:name', (req,res) => {
  {
      console.log(req.params)
      console.log(req.params.name)
      const player = NBA.findPlayer(req.params.name);
      console.log(player.playerId)
      NBA.stats.playerProfile({ PlayerID: player.playerId }).then((playerInfo) => {
          console.log(playerInfo)
	  var commonPlayerInfoMap = {
		      list : 'seasonTotalsRegularSeason',
		      item: {
//			       playerId: "playerId",
				  seasonId: "seasonId",
//				  leagueId: "leagueId",
				  //teamId: "teamId",
				  teamAbbreviation: "teamAbbreviation",
				  playerAge: "playerAge",
				  gp: "gp",
				  gs: "gs",
				  min: "min",
				  fgm: "fgm",
				  fga: "fga",
				  fgPct: "fgPct",
				  fG3M: "fG3M",
				  fG3A: "fG3A",
				  fg3Pct: "fg3Pct",
				  ftm: "ftm",
				  fta: "fta",
				  ftPct: "ftPct",
				  oreb: "oreb",
				  dreb: "dreb",
				  reb: "reb",
				  ast: "ast",
				  stl: "stl",
				  blk: "blk",
				  tov: "tov",
				  pf: "pf",
				  pts: "pts",
			          },
	  }
	  var dataTransform = DataTransform(playerInfo, commonPlayerInfoMap );
	  var result = dataTransform.transform();
          res.send(result)
          //res.send(obj);
      });
  }
});
// app.get('/shmrk/product/:product_id', productRoutes. getProductById);


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
