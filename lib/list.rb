class List

  def initialize name
    @name = name
  end

  def name
    @name
  end

  def == another_list
    @name = another_list.name
  end

  def List.all
    []
  end
end
