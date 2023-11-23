# https://www.codewars.com/kata/526989a41034285187000de4

# Description:
# Implement a function that receives two IPv4 addresses, and returns the number of addresses between them (including the first one, excluding the last one).
# All inputs will be valid IPv4 addresses in the form of strings. The last address will always be greater than the first one.


def ipsBetween(start, ending)
    start = start.split('.').map(&:to_i) 
    ending = ending.split('.').map(&:to_i)
  
    multiplier = 1 
    total_free_ip_address = 0 
  
    ((start.length-1)).downto(0) do |i|
        total_free_ip_address += (ending[i] - start[i]) * multiplier
        multiplier *= 256
    end
    return total_free_ip_address
  end