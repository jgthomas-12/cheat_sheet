
# Alphabetize array and print "Index position + 1". "element"

comic_books = ["Saga", "Battle Chasers", "Lotw", "Y the Last Man", "Supertman", "BC", "StO"]

comic_books.sort!.each_with_index do |comic_book, index|
    p "#{index+1}. '#{comic_book}'"
end

# Make phone number from array of integers

num = [3, 5, 7, 3, 8, 5, 6, 7, 3, 2]
    p num.join.insert(3, "-").insert(-5, "-")


activities = ["skiing", "football", "golfing", "climbing", "movie", "origami"]

activities.each do |activity|
    if activity.end_with?("ing")
        p activity
    end
end


# gsub vs sub - 
#gsub = global sub so method works on all the strings in the array.
# sub = string method and works on single string only 

sentences = ["turing is the best", "i like cheese", "hogwarts is...?", "where did all the fun go?"]

sentences.each do |sentence|
    p sentence.split(" ").map {|word| word.capitalize }.join(" ")  #These two methods in the code block do the same thing, use one or the other
    p sentence.sub(/[A-Za-z']+/,&:capitalize)
end 

def cap_every_word(str)
    arr_of_words = str.split(' ')
    arr_of_words.each do |word|
      puts word.capitalize
    end
end
  
  cap_every_word('hello, world! my name is Jesse.')

  str = ["dang it biscuits thats a bad biscuits"]
p str.map {|str| str.gsub(/\b[a-z]/, &:upcase)}
  

class Hobbit
    attr_accessor :age
    def initialize(name, disposition = "Hobbitish")
        @name = name.to_s
        @disposition = disposition.to_s
        @age = 0
        @is_adult = false
        @is_old = false 
        @has_ring = false
    end

    def celebrate_birthday
        @age = @age +1
        if @age >= 101
            @is_old = true
        elsif @age >= 33
            @is_adult = true
        end
    end

    def name 
        if @name == "Frodo"
            @has_ring = true
        end
    end
end

p hobbit_1 = Hobbit.new("Bilbo", "Weary")
#git commands including how to connect to remote repository. And check it git remote -v and that stuff

# array methods
.first                   # This will print the first element in the array. 
.last                    # This will print the last element in the array
.take (3)                # This will print the first (specified amount) of elements of the array. 
.length                  # This will print the number of elements in the array. 
.count                   # This will also print the number of elements in the array.
.empty?                  # This will return a boolean result telling us whether or not the array is empty.
.include?("computers")   # This will tell us if the array includes the word computers with a boolean result.