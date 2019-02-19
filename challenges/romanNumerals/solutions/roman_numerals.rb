def convert_to_roman(num, options={})
  result = ""

  roman_numerals = {
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => "X",
    5 => "V",
    1 => "I"
  }
  
  while num >= 1
    roman_numerals.each do |arabic, roman|
      quotient = num / arabic
      result << roman * quotient
      num -= arabic * quotient
      break if num == 0
    end
  end

  if options[:modern]
    issues = {
      "VIIII" => "IX",
      "IIII" => "IV",
      "LXXXX" => "XC",
      "XXXX" => "XL",
      "DCCCC" => "CM",
      "CCCC" => "CD"
    }

    issues.each do |current, fix|
      result = result.sub(current, fix) if result.include?(current)
    end
  end

  result
end
