import org.scalatest.FlatSpec

class ClockSequenceSpec extends FlatSpec {

  "When requiring the 5 element of the sequence" should "return 32" in {
    val sequence:List[Int] = List(1,2,3,4)
    val element:List[String] = ClockSequence.buildSequenceByIndex(5, sequence)
    assert(element.contains("32"))
  }

  "When requiring the 11 element of the sequence" should "return 32123" in {
    val sequence:List[Int] = List(1,2,3,4)
    val element:List[String] = ClockSequence.buildSequenceByIndex(32123, sequence)
    assert(element.contains("32123"))
  }

  "When requiring the 2 element of the sequence" should "return 2" in {
    val sequence:List[Int] = List(1,2,3,4)
    val element:List[String] = ClockSequence.buildSequenceByIndex(2, sequence)
    assert(element.contains("2"))
  }

  "Two first elements sum" should "return 3" in {
    val sequence:List[Int] = List(1,2,3,4)
    val sumResult = ClockSequence.sumByIndex(2, sequence)
    assert(sumResult == 3)
  }

  "The S(4)" should "return 10" in {
    val sequence:List[Int] = List(1,2,3,4)
    val sumResult = ClockSequence.sumByIndex(4, sequence)
    assert(sumResult == 10)
  }

  "The S(11)" should "return 36120" in {
    val sequence:List[Int] = List(1,2,3,4)
    val sumResult = ClockSequence.sumByIndex(11, sequence)
    assert(sumResult == 36120)
  }

  "The S(1000) with sequence 1234321" should "return" in {
    val sequence:List[Int] = List(1,2,3,4)
    val sumResult = ClockSequence.sumByIndex(1000, sequence)
    assert(sumResult % 123454321 == 18232686)
  }

  "The S(1014) with sequence 1234321" should "return" in {
    val sequence:List[Int] = List(1,2,3,4)
    val sumResult = ClockSequence.sumByIndex(1014, sequence)
    assert(sumResult % 123454321 == 18232686)
  }
}
