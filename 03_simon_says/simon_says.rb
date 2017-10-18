#write your code here
def echo(a)
  puts a
  return a
end

def shout(a)
  puts a
  return a.upcase
end

def repeat(a , b = 1)
  puts a
  if b <= 1
    b = 1
  else
    b -= 1
  end
  return a << (" " + a) * (b)
end

def start_of_word(a, b = 1)
  puts a
  return a[0,b]
end

def first_word(a)
  puts a
  return a[0,a.index(' ')]
end

def titleize(a)
  littleWords = ["and","the","or","over","a"]
  puts a
  a = a.split
  a.each { |x| x.capitalize!}
  a.each { |i|
    if littleWords.include?(i.downcase) && a.rindex(i) > 0
      i.downcase!
    end
  }
  a[0].capitalize!
  a.join(" ")
end
