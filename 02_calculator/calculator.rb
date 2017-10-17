
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def sum(a=[])
    if a == []
      a = 0
    else
      a.reduce(:+)
    end
  end

  def multiply(*a)
    a.reduce(:*)
  end

  def power(a,b)
    a**b
  end

  def factorial(a)
    if a == 0
      a = 0
    else
    a.downto(1).reduce(:*)
  end
  end


# Calculator.new.add(gets,gets)
