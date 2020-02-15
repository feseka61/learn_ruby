#write your code here
def echo(string)
    string
end

def shout(string)
    string.upcase
end

def repeat(simon, *arguments)
    if arguments[0] != nil && arguments[0] > 2 
        return "#{(simon.to_s + " ") * arguments[0]}".chomp(" ")
    else
        return "#{(simon.to_s + " ") * 2}".chomp(" ")
    end
end

def start_of_word(word, number)
    word[0..number-1]
end

def first_word(word)
    array = word.split(" ")
    array[0]
end

def titleize(word)
    words = word.split(" ")
    final = []
    i = 1
    final[0] = words[0].capitalize
    (words.length-1).times do
        if ["and", "or", "over", "the"].include? words[i]
            final[i] = words[i]
        else
            final[i] = words[i].capitalize
        end
        i += 1
    end
    final.join(" ")
end