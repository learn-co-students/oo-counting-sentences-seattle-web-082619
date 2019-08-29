require 'pry'

class String

  def sentence?
    self[-1] == '.'

  def question?
    self[-1] != '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences(string)
  arr = string.split('.').collect do |str|
     str.split('!').collect do |str|
       str.split('?')
       end
     end

  arr.flatten.count

  end


end
