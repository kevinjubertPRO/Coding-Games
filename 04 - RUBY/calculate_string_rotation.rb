# https://www.codewars.com/kata/5596f6e9529e9ab6fb000014

# Description:

# Write a function that receives two strings and returns n, where n is equal to the number of characters we should shift the first string forward to match the second. The check should be case sensitive.

# For instance, take the strings "fatigue" and "tiguefa". In this case, the first string has been rotated 5 characters forward to produce the second string, so 5 would be returned.
# If the second string isn't a valid rotation of the first string, the method returns -1. 

def shifted_diff(first, second)

    rotation = ""
  
    for letter in first.chars
        if second.include?(rotation+letter)
            rotation += letter 
        end
    end
    
    if (second == first[rotation.length..-1] + rotation)
        return first.length - rotation.length
    else 
        return -1
    end
end