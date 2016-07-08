
class Word
  attr_reader(:word, :id, :definition)
  @@words = []

  define_method(:initialize) do |attributes|
    @word = attributes[:word]
    @id = @@words.length + 1
    @definition = []
  end
  
  define_singleton_method(:all) do
    @@words
  end


end
