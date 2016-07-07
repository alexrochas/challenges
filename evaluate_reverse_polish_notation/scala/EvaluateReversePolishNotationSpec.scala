import org.scalatest.FlatSpec

class EvaluateReversePolishNotationSpec extends FlatSpec {

  "When input is [2,3,+]" should "return 5" in {
    val input = List("2","3","+")
    val result = EvaluateReversePolishNotation.calculateSequence(input.reverse)
    assert(result.head.toInt == 5)
  }

  "When input is [2,3,+,3,*]" should "return 15" in {
    val input = List("2","3","+","3","*")
    val result = EvaluateReversePolishNotation.calculateSequence(input.reverse)
    assert(result.head.toInt == 15)
  }

  "When input is [2,3,+,5,/]" should "return 15" in {
    val input = List("2","3","+","5","/")
    val result = EvaluateReversePolishNotation.calculateSequence(input.reverse)
    assert(result.head.toInt == 1)
  }
}
