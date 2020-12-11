# monkey patch some stuff into String
require 'pry'

# questions and sentences oh my
class String
  def sentence?
    end_with?('.')
  end

  def question?
    end_with?('?')
  end

  def exclamation?
    end_with?('!')
  end

  def count_sentences
    split(Regexp.union(['. ', '! ', '? '])).count
  end
end
