require_relative '../lib/linter'

describe Linter do
  describe '#check_hex_case' do
    linter = Linter.new("./spec/linter.css")
    it 'checks if the hex case is incorrect' do
      r = linter.send(:check_hex_case, "#FFF", 5)
      expect(r).to eq(["#FFF should be lowercase on line 5."])
    end

    it 'checks the hex case class' do
      r = linter.send(:check_hex_case, "#FFF", 1)
      expect(r.class).to eq(Array)
    end
    
    it 'checks if the hex case is correct' do
      r = linter.send(:check_hex_case, "#fff", 3)
      expect(r).to eq(nil)
    end
  end

  describe '#check_trailing_spaces' do
    linter = Linter.new("./spec/linter.css")
    it 'checks if there are any trailing spaces' do
      r = linter.send(:check_trailing_spaces, " ", 15)
      expect(r).to eq(["Trailing spaces detected on line 15."])
    end

    it 'checks the trailing_spaces class' do
      r = linter.send(:check_trailing_spaces, " ", 12)
      expect(r.class).to eq(Array)
    end

    it 'checks if there are no trailing spaces' do
      r = linter.send(:check_trailing_spaces, "", 11)
      expect(r).to eq(nil)
    end
  end

  describe '#check_braces' do
    linter = Linter.new("./spec/linter.css")
    it 'checks if there are two braces on the same line' do
      r = linter.send(:check_braces, "{}", 6)
      expect(r).to eq(["Two braces detected on line 6."])
    end

    it 'checks the check_braces class' do
      r = linter.send(:check_braces, "{}", 4)
      expect(r.class).to eq(Array)
    end

    it 'checks if there are no occurrences of two braces on the same line' do
      r = linter.send(:check_braces, "{", 21)
      expect(r).to eq(nil)
    end
  end

  describe '#check_semicolons' do
    linter = Linter.new("./spec/linter.css")
    it 'checks if there are extra semicolons' do
      r = linter.send(:check_semicolons, ";;", 24)
      expect(r).to eq(["Extra semicolon detected on line 24."])
    end

    it 'checks the check_semilcolons class' do
      r = linter.send(:check_semicolons, ";;", 14)
      expect(r.class).to eq(Array)
    end

    it 'checks if there are no extra semicolons' do
      r = linter.send(:check_semicolons, ";", 3)
      expect(r).to eq(nil)
    end
  end

  describe '#check_decimals' do
    linter = Linter.new("./spec/linter.css")
    it 'checks for incorrect decimal placement in each line' do
      r = linter.send(:check_decimals, ":2.000", 7)
      expect(r).to eq(["Max decimal places should be limited to 2 on line 7."])
    end

    it 'checks the check_decimals class' do
      r = linter.send(:check_decimals, ":2.000", 14)
      expect(r.class).to eq(Array)
    end

    it 'checks if there are no issues with decimal placement in each line' do
      r = linter.send(:check_decimals, "3.00", 7)
      expect(r).to eq(nil)
    end
  end

  describe '#check_font_weight' do
    linter = Linter.new("./spec/linter.css")
    it 'checks if the font weight is incorrect' do
      r = linter.send(:check_font_weight, "font-weight: italic", 25)
      expect(r).to eq(["Font weight should be numeric on line 25."])
    end

    it 'checks the check_font_weight class' do
      r = linter.send(:check_font_weight, "font-weight: italic", 25)
      expect(r.class).to eq(Array)
    end

    it 'checks if the font weight is correct' do
      r = linter.send(:check_font_weight, "font-weight: 200", 45)
      expect(r).to eq(nil)
    end
  end

  describe '#check_comma_spaces' do
    linter = Linter.new("./spec/linter.css")
    it 'checks if there is a missing space after each comma' do
      r = linter.send(:check_comma_spaces, ",1px", 3)
      expect(r).to eq(["There should be a space after the comma on line 3."])
    end

    it 'checks the check_comma_spaces class' do
      r = linter.send(:check_comma_spaces, ",1px", 3)
      expect(r.class).to eq(Array)
    end

    it 'checks if there is no missing space after each comma' do
      r = linter.send(:check_comma_spaces, ", 1px", 11)
      expect(r).to eq(nil)
    end

  end

  describe '#check_leading_zeros' do
    linter = Linter.new("./spec/linter.css")
    it 'checks the if there are any leading zeros' do
      r = linter.send(:check_leading_zeros, ":.5", 24)
      expect(r).to eq(["There should be a zero before the decimal point on line 24."])
    end

    it 'checks the check_leading_zeros class' do
      r = linter.send(:check_leading_zeros, ":.5", 24)
      expect(r.class).to eq(Array)
    end

    it 'checks the if there are no leading zeros' do
    r = linter.send(:check_leading_zeros, ":0.5", 24)
      expect(r).to eq(nil)
    end

  end

  describe '#run_check' do
    linter = Linter.new("./spec/linter.css")
    it 'runs the linter checks' do
      expect(linter.run_check.class).to eq(Array)
    end
  end
end