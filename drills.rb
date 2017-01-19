#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'

  def say_hello
    return "hello"
  end


#echo
  # echoes (returns) the input string

def echo (str)
  return str
end


#get_fruit
  # returns the fruit that corresponds to the given id
  # does not raise an error when the id argument is missing
  # defaults to 'apple' when no id argument is supplied
#

def get_fruit(id=0)
  fruit = ["apple", "pear"]
  return fruit[id]
end

#how_many_args
  # accepts any number of arguments without error
  # returns the total number of arguments passed to the function

def how_many_args(*arg)
  return arg.count
end

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # raises an error when given non-keyword arguments

def find_answer(**kwargs)
  kwargs[:answer]
end

##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # returns the first letter of the given word
  # lowercases the first letter of the given word

def first_char (word)
  word.chars.first.downcase
end


#polly_wanna
  # includes the given word in its return value
  # repeats the given word 3 times

def polly_wanna (word)
  return word*3
end

#count_chars
  # returns the number of characters in the given string

def count_chars(string)
  string.length
end

#yell
  # convert the given message to uppercase
  # adds an exclamation point to the end of the given message

def yell (message)
  return message.upcase + "!"
end

#to_telegram
  # replaces periods in the input string with ' STOP'

def to_telegram (message)
  message.gsub(/\./, " STOP")
end

#spell_out
  # returns the input string, with characters seperated by dashes
  # converts the input string to lowercase
def spell_out (message)
  message.downcase.split("").join("-")
end

#seperate
  # seperates characters in the input string with a custom seperator, when supplied with one
  # seperates characters in the input string with dashes (by default)

def seperate (word, seperator="-")
  word.split("").join(seperator)
end

#croon
  # seperates characters in each word of the input phrase with dashes
  # preserves whitespace between words

def croon (word)
  word.split(" ").map {|word| word.split("").join("-") }.join(" ")
end



#palindrome_word?
  # determines whether a single given word is a palindrome
  # ignores case

def palindrome_word?(word)
  normalize = word.downcase
  normalize == normalize.reverse
end

#palindrome_sentence?
  # determines whether a given sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

def palindrome_sentence? (sentence)
  normalized = sentence.gsub(/[^a-z]/i, "").downcase
  normalized == normalized.reverse
end


#is_vowel
  # determines whether a given character is a vowel
  # ignores case
  # returns false for non-letter inputs
def is_vowel (char)
  char.is_a?(String) && !!char.match(/[aeiou]/i)
end

#add_period
  # adds a period to the end of the given sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  def terminal_punctuation?(word)
    word.end_with?(".")
  end

  def add_period(input)
    "!?.".include?(input[-1]) ? input : input + "."
  end  

###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # counts the spaces in a given string

def count_spaces (word)
  word.count ' '
end

#string_lengths
  # converts a given list of strings to a list of string lengths

def string_lengths(arr)
  return arr.map { |e| e.length}
end

#remove_falsy_values
  # filters out falsy values from the input array
def remove_falsy_values(arr)
return arr.select { |e| !!e }
end



#exclude_last
  # removes the last item from an input array
  # removes the last item from an input string

#exclude_first
  # removes the first item from an input array
  # removes the first character from an input string
  # does not alter the original input (non-destructive)

#exclude_ends
  # removes the first and last items from an input array
  # removes the first and last characters from an input string

#select_every_even
  # returns an array of even-indexed items from the input array

#select_every_odd
  # returns an array of odd-indexed items from the input array

#select_every_n
  # returns an array of items at an index evenly divisible by n, from the input array
  # defaults to an n value of 1



##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # returns an array containing every integer from 0 to the input n
  # rounds off decimals
def count_to(num)

  [*0..num].all? {|i| i.is_a?(Integer) }
  # num_arr = []
  # num.times do |i|
  #   num_arr.push(num)
  #
  # return num_arr
end

#is_integer?
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
#   # returns false for non-numbers
# def is_integer (num)
#   num = num.to_s
# end



#is_prime?
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers

#primes_less_than
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

#iterative_factorial
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates the factorial of the input number



##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # returns a hash
  # counts how many times each character appears in the input string
  # ignores case

#word_count
  # returns a hash
  # counts how many times a word appears in the input string
  # ignores case
  # ignores characters that are not in the sequence a-z

#most_frequent_word
  # finds the word in the input string that appears with the most frequency
