require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    #everything denotated inside / / is the regex
    #everything inside [] refers to the range
    #the + symbol adds a wildcard to the range
    self.split(/[\.!?]+/).count


    #can place a binding.pry here to run rspec 
    #tests on this method
    
  end
end

