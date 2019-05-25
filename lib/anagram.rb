class Anagram 
  
  attr_accessor :word 
  
  def initialize(word)
    @word = word 
  end 
  
  def match(array)
    split_word = @word.split("").sort
    split_array = array.map {|e| e.split("").sort}
    split_array.map {|w| w == split_word ? w : nil}.reject(&:nil?)
  end 
  
end 