require('rspec')
require('pry')
require('word')
# require('definition')
require('launchy')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#word') do
    it "returns an inputted word" do
      test_word=Word.new({:word => 'Stock'})
      expect(test_word.word).to(eq('Stock'))
      expect(test_word.id).to(eq(1))
    end
  end

  describe('.all') do
    it "is empty at the beginning" do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it "saves the inputted word" do
      test_word=Word.new({:word => 'Stock'})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe(".clear") do
    it "clears out all the saved words" do
      Word.new({:word => 'Stock'}).save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
#   describe(".clear") do
#   it("empties out all of the saved words") do
#     Task.new("wash the lion").save()
#     Task.clear()
#     expect(Task.all()).to(eq([]))
#   end
# end

  # describe()
end
