# require_relative "./s"

File.open("style.css", "r") do |file|
  i = 0
    for line in file.readlines()
      i += 1
      if line.include? "  "
        puts "line #{i} has an error."
      end
    end
  end