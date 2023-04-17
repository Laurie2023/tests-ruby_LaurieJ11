def echo(word) #testOK
  return word
end 

def shout (word) #testOK
  return word.upcase
end

def repeat (word, nb=2)#testOK #on peut définir une valeur par défaut à un arg
  arr = []
  arr.fill(word, arr.size, nb)#multiple fill of an aray à partir d'une position
  return arr.join(" ")
end

def start_of_word(word, nb) #testOK
  return word[0..(nb-1)] #puts seulement certaine(s) lettre(s) du mot
end 

def first_word (sentence) #testOK
  return sentence.split[0]
end 

def titleize(sentence) #testOK
  nocaps = ["and", "the", "or", "to", "a", "but"]
  return sentence.split.map.with_index { |word, i| nocaps.include?(word) && i != 0 ? word : word.capitalize }.join(" ")
end 

