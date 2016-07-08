require('rspec')
require('pry')
require('launchy')

require('definition')

describe(Definition) do
  describe("#definition") do
    it "returns a meaning of the word" do
      test_defin = Definition.new({:definition => "meaning of the word"})
      expect(test_defin.defin).to(eq("meaning of the word"))
    end
  end
end
