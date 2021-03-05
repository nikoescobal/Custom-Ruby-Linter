require_relative '../lib/linter'

linter = Linter.new('./bin/style.css')
puts linter.run_check
