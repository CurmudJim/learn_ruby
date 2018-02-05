#write your code here
def translate(string)
vowely = ['a','e','i','o','u','y']
string = string.split
string.each { |i|

  until vowely.include?(i[0].downcase) && (i[0] != 'u' && i[i.length-1] != 'q')
    firstLetter = i[0]
    lastLetter = i[i.length-1]
    i = i.reverse!.chop!.reverse!
    if firstLetter.ord >= 65 && firstLetter.ord <= 90
      firstLetter.downcase!
      i.capitalize!
    end
     i <<  firstLetter
  end
  i << "ay"
}

  string.join(" ")
end
