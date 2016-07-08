require('rspec')
require('pry')
require('word')
# require('definition')
require('launchy')

describe(Word) do
  describe('#word') do
    it "return an inputted word" do
      test_word=Word.new({:word => 'Stock'})
      expect(test_word.word).to(eq('Stock'))
    end
  end
end
