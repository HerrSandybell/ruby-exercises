dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
  string.split.each_with_object(Hash.new(0)) do |item, result|
    dictionary.each do |word|
      result[word] += 1 if item.downcase.include?(word)
    end
  end
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
