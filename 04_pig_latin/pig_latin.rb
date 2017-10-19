#write your code here
def translate(a)
vowely = ['a','e','i','o','u','y']
a = a.split
print a
a.each { |i|
  until vowely.include?(i[0]) && (i[0] != 'u' && i[i.length-1] != 'q')
    b = i[0]
    i = i.reverse!.chop!.reverse! << b
  end
  i << "ay"
}

  a.join(" ")
end
