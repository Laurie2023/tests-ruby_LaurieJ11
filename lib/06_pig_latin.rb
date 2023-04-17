def translate (sentence)
  phoneme = sentence.split.map{|word| (word.include?"qu")? 1: 0}

  first_v = sentence.split.map{|word| word.index(/[aeiou]/).to_i} #find the position of the first vowel of the word and stock it in an array

  #position taking in account phoneme
  position = [phoneme , first_v]

  base = (position.transpose.map!(&:sum)).zip(sentence.split) #h stock the sentence and the vowels' position
  
  return base.map{|arr| arr[0]==0 ? "#{arr[1]}ay" : (arr[0] == 1 ? "#{arr[1][1..-1]<<arr[1][0]}ay" : (arr[0] == 2 ? "#{arr[1][2..-1]<<arr[1][0..1]}ay" : (arr[0] == 3 ? "#{arr[1][3..-1]<<arr[1][0..2]}ay" : "#{arr[1][4..-1]<<arr[1][0..3]}ay")))}.join(" ").to_s

end 