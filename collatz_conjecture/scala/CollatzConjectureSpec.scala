import org.scalatest.FlatSpec

class CollatzConjectureSpec extends FlatSpec {

  "When input is 10" should "return 2" in {
    val result = CollatzConjecture.calculateAbsoluteDiferenceFor(10)
    assert(result == 2)
  }

  "When input is 34" should "return 4" in {
    val result = CollatzConjecture.calculateAbsoluteDiferenceFor(34)
    assert(result == 4)
  }

  "When input is 22" should "return 5" in {
    val result = CollatzConjecture.calculateAbsoluteDiferenceFor(22)
    assert(result == 5)
  }

  "When input is 18237" should "return 55" in {
    val result = CollatzConjecture.calculateAbsoluteDiferenceFor(18237)
    assert(result == 55)
  }
}
