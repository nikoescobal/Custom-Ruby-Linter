class Linter
  attr_reader :url, :errors
  def initialize(url)
    @url = url
    @errors = []
  end

  def run_check
    i = 0
    File.foreach(@url) do |line|
      i += 1
      check_hex_case(line, i)
      check_trailing_spaces(line, i)
      check_braces(line, i)
      check_semicolons(line, i)
      check_decimals(line, i)
      check_font_weight(line, i)
      check_comma_spaces(line, i)
      check_leading_zeros(line, i)
    end
    return @errors.sort{|el1, el2| el2 <=> el1}
  end

  private

  def check_hex_case(line, number)
    if line.include?("#")
      hex = line.split("#")[1].gsub(/\W/,"")
      if hex == hex.upcase
        @errors << "##{hex} should be lowercase on line #{number}."
      end
    end
  end

  def check_trailing_spaces(line, number)
    stripped_line = line.delete("\n")
    if stripped_line.end_with?(" ")
      @errors << "Trailing spaces detected on line #{number}."
    end
  end

  def check_braces(line, number)
    if line.include?("{") && line.include?("}")
      @errors << "Two braces detected on line #{number}."
    end
  end

  def check_semicolons (line, number)
    if line.include?(";;")
      @errors << "Extra semicolon detected on line #{number}."
    end
  end

  def check_decimals(line, number)
    if line.include?(':')
      val = line.split(':')[1]
      decimals = val.gsub(/[^\d,.]/i, '')
      if decimals.include?(".") && decimals.split(".")[1].length > 2
        @errors << "Max decimal places should be limited to 2 on line #{number}."
      end
    end
  end

  def check_font_weight(line, number)
    @errors << "Font weight should be numeric on line #{number}." if line.include?('font-weight') && line.match(/\D/)
  end
  
  def check_comma_spaces(line, number)
    if line.include?(',')
      val = line.split(',')[1]
      if val[0] != " "
        @errors << "There should be a space after the comma on line #{number}."
      end
    end
  end

  def check_leading_zeros(line, number)
    if line.include?(":")
      val = line.split(":")[1]
      decimals = val.gsub(/[^\d,.]/i, '')
      if decimals[0] == "."
        @errors << "There should be a zero before the decimal point on line #{number}."
      end
    end
  end
end
