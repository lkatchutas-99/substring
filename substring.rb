def substring(substr_this, dictionary)
  dictionary.reduce({}) do |hash, word|
    substr_this.downcase!
    if substr_this.include?(word)
      hash[word] = substr_this.scan(word).length
    end
    hash
  end
end

play_again = 'yes'
until play_again == 'no'
  add = ''
  dictionary_arr = []
  puts 'Add to dictionary, type "/" when you finished adding to array'

  until add == '/'
    print "Index #{dictionary_arr.length}: "
    add = gets.chomp
    unless add == '/'
      dictionary_arr.push(add)
    end
  end
  puts "This is your dictionary #{dictionary_arr}"
  print 'What do you want to substring? '
  substring_this = gets.chomp

  puts substring(substring_this, dictionary_arr)
  print 'That was fun, wanna do it again? Type anything for yes, type "no" to quit: '
  play_again = gets.chomp.downcase
end