def is_prime num
 if num == 1
   return false
 else
   return rec num, num - 1
 end
end

def rec num, i
 if i == 1
   return true
 end
 if num % i == 0
   return false
 else
   return rec num, i - 1
 end
end

p is_prime 7