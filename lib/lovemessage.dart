class Message {
  String getMessage(int lovepercent) {
    if (lovepercent > 70) {
      return "Made for each other";
    } else if (lovepercent >= 40 && lovepercent <= 69) {
      return " Work on relationship";
    } else {
      return " Not a very good score";
    }
  }
}
