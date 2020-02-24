class TeamData {
  static const List<String> columns = [
    'steals',
    "teamId",
    "gamesPlayed",
    "teamName",
    'winPercentage',
    'losses',
    'wins',
    'fga',
    'minutes',
    'fgm',
    'fg3Pct',
    'fg3M',
    'fgPct',
    'fg3A',
    'ftm',
    'fta',
    'ftPct',
    'turnovers',
    'assist',
    'oReb',
    'dReb',
    'reb',
    'pts',
    'plusMinus',
    'personalFouls',
    'gamesPlayedRank',
    'winRank',
    'lossRank',
    'pfd',
    'blockAttempts',
    'blocks',
  ];
  var steals;
  var teamId;
  var gamesPlayed;
  var teamName;
  var winPercentage;
  var losses;
  var wins;
  var fga;
  var minutes;
  var fgm;
  var fg3Pct;
  var fg3M;
  var fgPct;
  var fg3A;
  var ftm;
  var fta;
  var ftPct;
  var turnovers;
  var assist;
  var oReb;
  var dReb;
  var reb;
  var pts;
  var plusMinus;
  var personalFouls;
  var gamesPlayedRank;
  var winRank;
  var lossRank;
  var pfd;
  var blockAttempts;
  var blocks;

  TeamData({
    this.teamId,
    this.teamName,
    this.gamesPlayed,
    this.wins,
    this.losses,
    this.winPercentage,
    this.minutes,
    this.fgm,
    this.fga,
    this.fgPct,
    this.fg3M,
    this.fg3A,
    this.fg3Pct,
    this.ftm,
    this.fta,
    this.ftPct,
    this.oReb,
    this.dReb,
    this.reb,
    this.assist,
    this.turnovers,
    this.steals,
    this.blocks,
    this.blockAttempts,
    this.personalFouls,
    this.pfd,
    this.pts,
    this.plusMinus,
    this.gamesPlayedRank,
    this.winRank,
    this.lossRank,
  });
//32
  static List<TeamData> fromJson(List<dynamic> jsons) {
    return jsons.map((json) {
      return TeamData(
        teamId: json["teamId"],
        teamName: json["Houston Rockets"],
        gamesPlayed: json["gp"],
        wins: json["w"],
        losses: json["l"],
        winPercentage: json["wPct"],
        minutes: json["min"],
        fgm: json["fgm"],
        fga: json["fga"],
        fgPct: json["fgPct"],
        fg3M: json["fG3M"],
        fg3A: json["fG3A"],
        fg3Pct: json["fg3Pct"],
        ftm: json["ftm"],
        fta: json["fta"],
        ftPct: json["ftPct"],
        oReb: json["oreb"],
        dReb: json["dreb"],
        reb: json["reb"],
        assist: json["ast"],
        turnovers: json["tov"],
        steals: json["stl"],
        blocks: json["blk"],
        blockAttempts: json["blka"],
        personalFouls: json["pf"],
        pfd: json["pfd"],
        pts: json["pts"],
        plusMinus: json["plusMinus"],
        gamesPlayedRank: json["gpRank"],
        winRank: json["wRank"],
        lossRank: json["lRank"],
//        "wPctRank":1,"minRank":1,"fgmRank":1,"fgaRank":1,"fgPctRank":1,"fg3mRank":1,"fg3aRank":1,"fg3PctRank":1,"ftmRank":1,
//          "ftaRank":1,"ftPctRank":1,"orebRank":1,"drebRank":1,"rebRank":1,"astRank":1,"tovRank":1,"stlRank":1,"blkRank":1,"blkaRank":1,
//          "pfRank":1,"pfdRank":1,"ptsRank":1,"plusMinusRank":1,"cfid":10,"cfparams":"Houston Rockets"}
      );
    }).toList();
  }
}
