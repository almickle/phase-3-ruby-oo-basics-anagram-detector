class Anagram
    def initialize(word="listen")
        @word = word
        @match = []
    end
    def match(array)
        array.each do |word|
            word.split("").sort
            if word.split("").sort == @word.split("").sort
                @match.push(word)
            end
        end
        @match
    end
end

myAnagram = Anagram.new
myAnagram.match(%w[enlists google inlets banana])