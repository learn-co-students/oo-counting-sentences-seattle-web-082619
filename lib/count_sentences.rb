require 'pry'

class String

  def sentence?
    self.slice(-1) == "."
  end

  def question?
    self.slice(-1) == "?"
  end

  def exclamation?
    self.slice(-1) == "!"
  end

  def count_sentences
    arr = self.split(".").map { |i| i.split("?") }.flatten.map { |i| i.split("!") }.flatten
    length = arr.length
    arr.each { |i| length -= 1 if i == "" } 
    length
  end
end