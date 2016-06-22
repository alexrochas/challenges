object ClockSequence {
  def sumByIndex(index: Int, sequence: List[Int]):BigInt = {
    val elements:List[String] = ClockSequence.buildSequenceByIndex(index, sequence)
    elements.foldLeft(BigInt(0))((a,b) => a + BigInt(b))
  }

  def buildSequenceByIndex(n: Int, sequence:List[Int]):List[String] = {
    val formatedSequence:List[Int] = sequence ::: (2 until sequence.last).toList.reverse
    val circular = Iterator.continually(formatedSequence).flatten
    List.range(1, n + 1).map {
      r =>
        var acc = 0
        var charVal = List[String]()
        while (acc < r) {
          val actual = circular.next()
          acc = acc + actual
          charVal = actual.toString :: charVal
        }
        charVal.reverse.mkString("")
    }
  }
}
