class FilterNode
  attr_reader :value

  def >(other)
    @value = {gt: other}
  end

  def <(other)
    @value = {lt: other}
  end

  def ==(other)
    @value = other
  end
end
