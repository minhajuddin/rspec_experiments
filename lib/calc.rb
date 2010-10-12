class Calc
  def add(first, second)
    second + first
  end

  def evaluate(expression)
    tokens = expression.split('+')

    tokens.inject(0) do |sum, token|
      result = token.split('-').collect {|x| x.to_i}.inject do |r, t|
        r -= t
      end
      sum += result
    end

  end
end
