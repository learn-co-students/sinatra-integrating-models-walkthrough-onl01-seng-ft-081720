# Your TextAnalyzer model code will go here.
class TextAnalyzer

  attr_accessor :text

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    words = text.split(' ')
    words.count
  end

  def count_of_vowels
    text.scan(/[aeiou]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    s1 = text.gsub(/[^a-z]/, '')# gets rid of spaces
#If pattern is a single space, str is split on whitespace, with leading whitespace and runs of contiguous
    arr = s1.split('')
#sets a new variable of the array to the split version of the original array and only uses the unique words within the new string
    arr1 = arr.uniq
  #sets a new variable to a empty hash
    arr2 = {}
    #collects the inforamtion from the arr1
    #takes the new empty array and iterates through each element in the original array and sets it equal to the counts each element
    arr1.collect do |c|
      arr2[c] = arr.count(c)
    end
#creates a new variable and sets it equal to the first keys and values iterated through in arr2 that was split and removed any duplicates
    biggest = {arr2.keys.first => arr2.values.first }
#takes the split and uniq array and iterates through each key and value

    arr2.each do |key, value|
#if the biggest.values.first is bigger than the value
      if value > biggest.values.first
      #sets biggest to an empty hash
        biggest = {}
      #returns the biggest[key] equaled to the value found 
        biggest[key] = value
      end
    end
  #returns the biggest element
    biggest
  end
end


