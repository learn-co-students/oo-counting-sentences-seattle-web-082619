require 'pry'

class String

  def sentence?
    if self[self.length-1] == '.'
      return true
    else
      return false
    end
  end

  def question?
    if self[self.length-1] == '?'
      return true
    else
      return false
    end
  end

  def exclamation?
    if self[self.length-1] == '!'
      return true
    else
      return false
    end
  end

  def count_sentences
    arr = self.split(/[\?\!\.]/).reject { |ele| ele == ""}
    if arr.length > 1
      return arr.length
    end
    return 0
  end
end