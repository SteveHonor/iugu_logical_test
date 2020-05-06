def number_analysis
  @number = Integer(ARGV[0]).to_i

  result = ""
  result += "É esotérico." if isEsoteric?
  result += "É cético. "   if isSkeptical?
  result += "É primo."     if isPrime?

  result
end

def isEsoteric?
  ((@number % 3 == 0) && (@number % 5 == 0))
end

def isSkeptical?
  !isEsoteric?
end

def isPrime?
  count = 0

  (1..@number).each do |int|
    count += 1 if @number % int == 0
  end if @number > 0

  count == 2
end

puts number_analysis
