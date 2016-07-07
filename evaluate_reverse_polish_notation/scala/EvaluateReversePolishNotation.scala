object EvaluateReversePolishNotation {
  def calculateSequence(e: List[String]):List[String] = {
    val r = e.sliding(3,2).toList.flatMap(
      l => l match {
        case Seq(a,b,c) if a.equals("+") && !c.matches("\\+|-|\\*|/") => List((b.toInt + c.toInt).toString)
        case Seq(a,b,c) if a.equals("*") && !c.matches("\\+|-|\\*|/") => List((b.toInt * c.toInt).toString)
        case Seq(a,b,c) if a.equals("/") && !c.matches("\\+|-|\\*|/") => List((b.toInt / c.toInt).toString)
        case Seq(a,b,c) if a.equals("-") && !c.matches("\\+|-|\\*|/") => List((b.toInt - c.toInt).toString)
        case Seq(a,b,c) => List(a,b)
      }
    )
    if (r.size != 1) {
      r
    } else {
      calculateSequence(r)
    }
  }

}
