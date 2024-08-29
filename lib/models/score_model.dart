class ScoreModel {
  int teamAScore;
  int teamBScore;
  int lastAction;
  int lastScore;

  ScoreModel({
    this.teamAScore = 0,
    this.teamBScore = 0,
    this.lastAction = 0,
    this.lastScore = 0,
  });

  void addScore(int team, int points) {
    if (team == 1) {
      teamAScore += points;
      lastAction = 1;
    } else if (team == 2) {
      teamBScore += points;
      lastAction = -1;
    }

    lastScore = points;
  }

  void undoLastScore() {
    if (lastAction == 1) {
      teamAScore -= lastScore;
    } else if (lastAction == -1) {
      teamBScore -= lastScore;
    }

    lastAction = 0;
  }
}
