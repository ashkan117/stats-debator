class PlayerData {
  Map<String, dynamic> json;

  PlayerData(Map<String, dynamic> json) {
    this.json = json;
  }

  factory PlayerData.fromJson(Map<String, dynamic> json) {
    return PlayerData(
      json,
    );
  }

  //commonPlayerInfo
  static List<String> playerInfoColumns = [
    "displayFirstLast",
    "birthdate",
    "school",
    "country",
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
    "dleagueFlag",
    "nbaFlag",
    "gamesPlayedFlag",
    "draftYear",
    "draftRound",
    "draftNumber"
  ];

  get length => getCommonList().length;

  static List<String> getCommonList() {
    List<String> columns = [];
    playerInfoColumns.forEach((item) {
      columns.add(item);
    });
    return columns;
  }
}
