#write your code here
def translate(string)
    vovels = ["a", "e", "i", "o", "u"]
    words = string.split(" ")
    translated_words = []
    i = 0
    words.length.times do
        if words[i].slice("qu") != nil
            translated_words[i] = words[i] + words[i].slice!(0..(words[i].index("qu")+1)) + "ay"
        elsif words[i].slice("sch") != nil
            translated_words[i] = words[i] + words[i].slice!(0..(words[i].index("sch")+2)) + "ay"
        elsif vovels.include? words[i][0]
            translated_words[i] = words[i] + "ay"
        elsif vovels.include? words[i][1]
            translated_words[i] = words[i] + words[i].slice!(0) + "ay"
        elsif vovels.include? words[i][2]
            translated_words[i] = words[i] + words[i].slice!(0..1) + "ay"
        else
            translated_words[i] = words[i] + words[i].slice!(0..2) + "ay"
        end
        i += 1
    end
    translated_words.join(" ")
end
