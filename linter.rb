# require_relative './style.css'

class Linter
  attr_accessor :url
  def initialize()
    # @url = url
  end

  def run_check
    File.open("style.css", "r") do |file|
      i = 0
      for line in file.readlines()
        i += 1
        if line.include? "#"
          hex_case(line, i) 
        end
        trailing_spaces(line, i)
      end
    end
  end

  def trailing_spaces(line, number)
    line_end = line.split(";")[0]
    puts line.split(";")[0]
    # if !line_end.nil?
    #   puts "Trailing spaces detected on line #{number}."
    #   # puts line.split(";")[0]
    # end
  end