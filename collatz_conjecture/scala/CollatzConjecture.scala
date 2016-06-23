object CollatzConjecture {

  def calculateAbsoluteDiferenceFor(entry: Int):Int = {
    var _return = entry
    val sequence = entry :: Iterator.continually(_return)
      .takeWhile(i => i != 1)
      .map({
        case x:Int if x%2 == 0 => _return = _return/2; _return
        case x:Int if x%2 != 0 => _return = _return*3+1; _return
      }).toList
    val evens = sequence.count(_ % 2 == 0)
    sequence.size - evens
  }
}
