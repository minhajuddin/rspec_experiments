class Calc

  def add(first, second)
    second + first
  end

  def evaluate(expression)
    expression.reduce('+', proc{ |x,y| x + y }, proc{ |expr|
      expr.reduce('-', proc{ |x,y| x - y }, proc{ |expr| 
        expr.reduce('*', proc{ |x,y| x * y }, proc{ |expr| 
          expr.reduce('/', proc{ |x,y| x / y }, proc{ |expr| 
            expr.reduce('^', proc{ |x,y| 
              result = 1
              y.times.each do
                result = result * x
              end
              result
            }, proc{ |expr| expr.to_i })
          })
        })
      })
    })
  end

end

class String
  def reduce(delimiter, operation, further)
    tokens = self.split(delimiter)

    result = 0

    tokens.each_with_index do |token, index|


      if index == 0
        result = further.(token)
      else
        result = operation.(result, further.(token))
      end


    end

    return result
  end
end
