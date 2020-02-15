class Book
    def title
        @title
    end
    def title= string
        words = string.split(" ")
        final = []
        i = 1
        final[0] = words[0].capitalize
        (words.length-1).times do
            if ["and", "or", "over", "the", "of", "in", "a", "an"].include? words[i]
                final[i] = words[i]
            else
                final[i] = words[i].capitalize
            end
            i += 1
        end
        @title = final.join(" ")
    end    

end
