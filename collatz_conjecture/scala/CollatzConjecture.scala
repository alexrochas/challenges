object CollatzConjecture {
  def calculateAbsoluteDiferenceFor(entry: Int):Int = {
    var _return = entry
    var i = 1
    var evens = 0
    while(_return != 1) {
      i += 1
      if (_return % 2 == 0) {
        _return = _return / 2
        evens += 1
      } else {
        _return = _return*3 + 1
      }
    }
    i - evens
  }
}
