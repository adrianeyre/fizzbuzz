def fizzbuzz(num)
  result = ""
  result += "fizz" if num % 3 == 0
  result += "buzz" if num % 5 == 0
  result == "" ? num : result
end

class Integer
  def fizzbuzz
    result = ""
    result += "fizz" if self % 3 == 0
    result += "buzz" if self % 5 == 0
    result == "" ? self : result
  end
end
