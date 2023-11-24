# https://www.codewars.com/kata/65128732b5aff40032a3d8f0

# Description:
# Given two strings comprised of + and -, return a new string which shows how the two strings interact in the following way:

#     When positives and positives interact, they remain positive.
#     When negatives and negatives interact, they remain negative.
#     But when negatives and positives interact, they become neutral, and are shown as the number 0.

def neutralise(s1, s2):
    return  "".join(list(map(  (lambda x: x[0] if x[0]==x[1] else "0") , list(zip(s1, s2)) )) )