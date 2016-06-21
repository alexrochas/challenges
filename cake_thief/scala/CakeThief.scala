object CakeThief {
  def max_duffel_bag_value(cakeTuples: List[(Int, Int)], capacity: Int): Int = {
    val mostProfitCake = cakeTuples.foldLeft((1,0)){(b,a) => getMostProfitCake(b,a)}
    val mostProfitCapacity = capacity/mostProfitCake._1
    val filteredListWithoutMostProfitCake = cakeTuples.filter(a => a != mostProfitCake)
    if (filteredListWithoutMostProfitCake.nonEmpty) {
      return totalWeight(mostProfitCake, mostProfitCapacity) + max_duffel_bag_value(filteredListWithoutMostProfitCake, capacity - mostProfitCapacity * mostProfitCake._1)
    }
    totalWeight(mostProfitCake, mostProfitCapacity)
  }

  def totalWeight(mostProfitCake: (Int, Int), mostProfityCapacity: Int): Int = {
    mostProfityCapacity * mostProfitCake._2
  }

  private def getMostProfitCake(b:(Int,Int), a:(Int,Int)): (Int,Int) = {
    if (b._2/b._1 > a._2/a._1) {
      return b
    }
    return a
  }
}
