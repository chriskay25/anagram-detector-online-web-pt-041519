class Anagram 
  
  attr_accessor :word 
  
  def initialize(word)
    @word = word 
  end 
  
  def match(array)
    split_word = @word.split("").sort
    split_array = array.map {|e| e.split("").sort}
    split_array.map {|w| w == split_word ? w : nil}.reject(&:nil?).join
  end 
  
   def match(array)
    split_word = @word.split("").sort
    split_array = array.collect {|e| e.split("").sort}.select {|w| w == split_word}
    array.select {|el| el.split("").sort == split_array[0]}
  end 
  
end 