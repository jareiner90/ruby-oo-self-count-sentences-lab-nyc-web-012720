require 'pry'

class String
  def initialize(string)
    @string = string

  end

  def sentence?
    if self.end_with?(".") 
      return true 
    else 
      false 
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else 
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else 
      return false
    end

  end

  def count_sentences
    sentence_array = self.split()
    sentence_count = 0 

    sentence_array.each do |word|
      word_length = word.length
      if word[word_length - 1] == "." || word[word_length - 1] == "?" || word[word_length - 1] == "!"
        sentence_count += 1
      end 
    end 
    return sentence_count
  end
end