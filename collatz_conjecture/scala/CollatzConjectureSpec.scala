import org.scalatest.FlatSpec

class CollatzConjectureSpec extends FlatSpec {

  "When input is 10" should "return 2" in {
    val result = CollatzConjecture.calculateAbsoluteDiferenceFor(10)
    assert(result == 2)
  }

}
