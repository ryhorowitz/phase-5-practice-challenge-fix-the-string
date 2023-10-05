require 'pry'
# Iterate through the string. Look at char and the next char in pairs.
# Does are they same char but in different cases?
# -yes then remove them from the string
# -no move to the next char and create an new pair to analyze
#
# if there is no next char stop iterating
def fix_the_string(str)
  stack = []

  str.each_char do |char|
    # if the stack isn't empty && char != the last char in the stack
    # && char uppercase == the last char in the stack uppercased
    # remove the last char in the stack
    if !stack.empty? && char != stack.last && char.upcase == stack.last.upcase
      stack.pop

    else
      stack.push(char)
    end
  end

  result = ''
  result = stack.pop + result until stack.empty?
  # make result str var
  # pop off each char from the stack and add it to the result string.
  #  adding to the string in reverse order
  result
end

# answer = fix_the_string('') # 'aAC'
# puts " answer is #{answer}"
