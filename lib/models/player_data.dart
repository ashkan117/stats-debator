class PlayerData {
  var json;

  PlayerData(this.json);
  //commonPlayerInfo
  static Map<String, List<String>> playerInfoMap = {
    "commonPlayerInfo": [
      "personId",
      "firstName",
      "lastName",
      "displayFirstLast",
      "displayLastCommaFirst",
      "displayFiLast",
      "birthdate",
      "school",
      "country",
      "lastAffiliation",
      "height",
      "weight",
      "seasonExp",
      "jersey",
      "position",
      "rosterstatus",
      "teamId",
      "teamName",
      "teamAbbreviation",
      "teamCode",
      "teamCity",
      "playercode",
      "fromYear",
      "toYear",
      "dleagueFlag"
          "nbaFlag",
      "gamesPlayedFlag",
      "draftYear",
      "draftRound",
      "draftNumber"
    ],
    "playerHeadlineStats": [
      "playerId",
      "playerName",
      "timeFrame",
      "pts",
      "ast",
      "reb",
      "pie"
    ],
  };

  get length => getCommonList().length;

  static List<String> getCommonList() {
    List<String> columns = [];
    playerInfoMap.forEach((String category, List<String> categoryResults) {
      categoryResults.forEach((item) {
        columns.add(item);
      });
    });
    return columns;
  }
}
