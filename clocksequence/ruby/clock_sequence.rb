class ClockSequence
  SEQUENCE = [1,2,3,4]

  def initialize
    @@index = 0
  end

  def get_current
    get(@@index)
  end

  def get(number)
    res = number % (sequence_size + sequence_size_without_first_last)
    if res >= sequence_size
      SEQUENCE.reverse[sequence_reverse_index res]
    else
      SEQUENCE[res]
    end
  end
  
  def next
    next_index
  end

  private
  def next_index
    @@index += 1
  end

  def sequence_size
    SEQUENCE.size
  end

  def sequence_size_without_first_last
    SEQUENCE.size - 2
  end

  def sequence_reverse_index(result)
    (result % sequence_size) + 1
  end
end
