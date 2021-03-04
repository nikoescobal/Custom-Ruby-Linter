require_relative '../lib/linter'

describe Linter do
  linter = Linter.new("./spec/linter.css")

  describe '#check_hex_case' do
    it 'checks the hex case' do
      r = linter.send(:check_hex_case, "#FFF", 5)
      expect(r).to eq(["#FFF should be lowercase on line 5."])
    end
  end

  # describe '#run_check' do
  #   it 'runs the linter checks' do
  #     expect(linter.run_check.class).to eq(Array)
  #   end
  # end

  # describe '#run_check' do
  #   it 'runs the linter checks' do
  #     expect(linter.run_check.class).to eq(Array)
  #   end
  # end

  # describe '#run_check' do
  #   it 'runs the linter checks' do
  #     expect(linter.run_check.class).to eq(Array)
  #   end
  # end

  # describe '#run_check' do
  #   it 'runs the linter checks' do
  #     expect(linter.run_check.class).to eq(Array)
  #   end
  # end

  # describe '#run_check' do
  #   it 'runs the linter checks' do
  #     expect(linter.run_check.class).to eq(Array)
  #   end
  # end

  # describe '#run_check' do
  #   it 'runs the linter checks' do
  #     expect(linter.run_check.class).to eq(Array)
  #   end
  # end

  # describe '#run_check' do
  #   it 'runs the linter checks' do
  #     expect(linter.run_check.class).to eq(Array)
  #   end
  # end


  describe '#run_check' do
    it 'runs the linter checks' do
      expect(linter.run_check.class).to eq(Array)
    end
  end
end