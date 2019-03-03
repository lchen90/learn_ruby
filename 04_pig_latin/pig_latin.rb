#write your code here

def pigify(word)
vowels = [ 'a', 'e', 'i', 'o','u', 'q']
letters = word.split("")
letters.each_with_index do |letter, index|
  if vowels.include?(letter)
    if letter == 'q'
      return index + 2
    end
    return index
  end
end
return -1
end

def translate(string)
  words = string.split(" ")
  newWord = ''
  words.each_with_index do |word, index|
    firstVowelIndex = pigify(word)
    if firstVowelIndex == 0
      newWord += word + "ay"
    elsif firstVowelIndex == 1
      newWord += word[1..-1] + word[0] + "ay"
    elsif firstVowelIndex == 2
      newWord += word[2..-1] + word[0..1] + "ay"
    elsif firstVowelIndex == 3
      newWord += word[3..-1] + word[0..2] + "ay"
    end

    if index !=words.length - 1
      newWord += " "
    end
  end
  return newWord
end
