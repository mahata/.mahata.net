# -*- coding: utf-8 -*-
@# -*- coding: utf-8 -*-
# puts eval(ARGV*'..')
# eval([1,ARGV[0]]*'..')


# (1..ARGV[0].to_i).each {|i|
# 	o = ''
# 	o += 'fizz' if i % 3 == 0
# 	o += 'buzz' if i % 5 == 0
# 	puts o == '' ? i : o
# }

# (1..ARGV[0].to_i).each {|i|
# 	f = ['fizz'][i % 3]
# 	b = ['buzz'][i % 5]
# 	puts f + b
# }

# 文字列 ("Fizz") > シンボル (:Fizz)
# ARGV => $*
# each => map

# eval(ARGV * '..').each{|i| puts "#{i}\r#{[:Fizz][i%3]}#{[:Buzz][i%5]}" }
# puts eval($* * '..').map{|k| a = [[:Fizz][k % 3], [:Buzz][k % 5]] * ''; a == '' ? k : a }

# [:Fizz][0 % 3] = :Fizz

# (1..15).each {|i|
#   f = 'Fizz' if i % 3 == 0
#   b = 'Buzz' if i % 5 == 0
#   o = f.to_s + b.to_s
#   puts o == '' ? i : o
# }

####
# ['Fizz'][0 % 3] = 'Fizz'
# ['Fizz'][1 % 3] = nil
# ['Fizz'][2 % 3] = nil
# ['Fizz'][3 % 3] = 'Fizz'
# ...
####

# (1..15).each {|i|
#   f = ['Fizz'][i % 3]
#   b = ['Buzz'][i % 5]
#   o = f.to_s + b.to_s
#   puts o == '' ? i : o
# }

#### String to Simbol

# (1..15).each {|i|
#   f = [:Fizz][i % 3]
#   b = [:Buzz][i % 5]
#   o = f.to_s + b.to_s
#   puts o == '' ? i : o
# }

#### [1, 2, 3, 4, 5] * "!" => "1!2!3!4!5" # same as [1, 2, 3, 4, 5].join("!")
#### [1, nil, 3, nil, 5] * "!" => "1!!3!!5" # same as [1, nil, 3, nil, 5].join("!")
#### How about `[[:Fizz][i % 3], [:Buzz][i % 5]] * ''` ?

# (1..15).each {|i|
#   o = [[:Fizz][i % 3], [:Buzz][i % 5]] * ''
#   puts o == '' ? i : o
# }

# (1..$*[0].to_i).each{|i|o=[[:Fizz][i%3],[:Buzz][i%5]]*'';puts o==''?i:o}
# 1.upto($*[0].to_i){|i|o=[[:Fizz][i%3],[:Buzz][i%5]]*'';puts o==''?i:o}

