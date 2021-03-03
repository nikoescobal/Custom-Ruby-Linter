require_relative '../lib/linter'

linter = Linter.new('../style.css')
puts linter.run_check
