class Calc
  def add(first, second)
    second + first
  end

  def evaluate(expression)
    tokens = expression.split('-')

    tokens.inject(0) do |sum, token|
      sum += token.to_i
    end

  end
end
