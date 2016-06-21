import org.scalatest.FlatSpec

class CakeThiefSpec extends FlatSpec {

  "A empty bag" should "return 0" in {
    val max = CakeThief.max_duffel_bag_value(List(), 0)
    assert(max == 0)
  }

  "Cake tuples" should "return 10" in {
    val cakeTuples = List((2,100), (1,1))
    val capacity = 10
    val max = CakeThief.max_duffel_bag_value(cakeTuples, capacity)
    assert(max == 500)
  }

  "Cake tuples" should "return 20" in {
    val cakeTuples = List((7,160), (3,90), (2,15))
    val capacity = 20
    val max = CakeThief.max_duffel_bag_value(cakeTuples, capacity)
    assert(max == 555)
  }

  "Cake tuples" should "return 15" in {
    val cakeTuples = List((7,160), (3,90), (2,15))
    val capacity = 2
    val max = CakeThief.max_duffel_bag_value(cakeTuples, capacity)
    assert(max == 15)
  }
}
