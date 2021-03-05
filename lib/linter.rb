require 'colorize'

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
    if @errors.length == 0
      @errors << "All checks have passed! No errors detected.".colorize(:green)
    else
      @errors.sort { |el1, el2| el2 <=> el1 }
    end
  end

  private

  def check_hex_case(line, number)
    return unless line.include?('#')

    hex = line.split('#')[1].gsub(/\W/, '')
    @errors << "##{hex} should be lowercase on line #{number}.".colorize(:red) if hex == hex.upcase
  end

  def check_trailing_spaces(line, number)
    stripped_line = line.delete("\n")
    @errors << "Trailing spaces detected on line #{number}.".colorize(:red) if stripped_line.end_with?(' ')
  end

  def check_braces(line, number)
    @errors << "Two braces detected on line #{number}.".colorize(:red) if line.include?('{') && line.include?('}')
  end

  def check_semicolons(line, number)
    @errors << "Extra semicolon detected on line #{number}.".colorize(:red) if line.include?(';;')
  end

  def check_decimals(line, number)
    return unless line.include?(':')

    val = line.split(':')[1]
    decimals = val.gsub(/[^\d,.]/i, '')
    return unless decimals.include?('.') && decimals.split('.')[1].length > 2

    @errors << "Max decimal places should be limited to 2 on line #{number}.".colorize(:red)
  end

  def check_font_weight(line, number)
    @errors << "Font weight should be numeric on line #{number}.".colorize(:red) if line.include?('font-weight') && !line.match(/\d/i)
  end

  def check_comma_spaces(line, number)
    return unless line.include?(',')

    val = line.split(',')[1]
    @errors << "There should be a space after the comma on line #{number}.".colorize(:red) if val[0] != ' '
  end

  def check_leading_zeros(line, number)
    return unless line.include?(':')

    val = line.split(':')[1]
    decimals = val.gsub(/[^\d,.]/i, '')
    @errors << "There should be a zero before the decimal point on line #{number}.".colorize(:red) if decimals[0] == '.'
  end
end
