require 'pry-byebug'

def caesar_cipher(string, shift)
  result = ''

  string.each_char do |char|
    ord = char.ord

    base = ord < 91 ? 65 : 97

    if ord.between?(65, 90) || ord.between?(97, 122)
      rotation = (((char.ord - base) + shift) % 26) + base
      result += rotation.chr
    else
      result += char
    end
  end

  result
end

p caesar_cipher('AB', -400)
