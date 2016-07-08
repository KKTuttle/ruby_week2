class Definition
  attr_reader(:definition)

  define_method(:initialize) do |attributes|
    @definition = attributes[:definition]
  end
end
