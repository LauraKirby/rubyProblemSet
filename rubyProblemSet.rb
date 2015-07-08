
# # Temprature Convertor
# puts "type 1 to convert from Celsius to Fahrenheit /n or type 2 to convert from Fahrenheit to Celsius"
# scale_chosen = gets.chomp

# def temp(arg)
# 	if arg == '1'
# 		puts "enter Celsius temprature"
# 		temprature = gets.chomp 
# 		f_temp = temprature.to_f * 9/5 + 32
# 		puts "#{temprature} degrees Celsius is #{f_temp.round(2)} degrees Fahrenheit"
# 	elsif arg == '2'
# 		puts "enter Fahrenheit temprature"
# 		temprature = gets.chomp
# 		c_temp = temprature.to_f * 5/9 + 32
# 		puts "#{temprature} degrees Fahrenheit is #{c_temp.round(2)} degrees Celsius"
# 	else 
# 		puts "sorry, i don't recognize that"
# 	end 
# end 

# temp(scale_chosen)

# # Guessing Game 
# puts "choose a number between 1 and 100"
# guess = gets.chomp.to_i  
# rand_num = Random.new.rand(1..100-1) 
# puts rand_num

# def numChecker(arg, r_n)
# 	while arg != r_n do 
# 		if arg < r_n 
# 			puts "guess higher than #{arg}"
# 			arg = gets.chomp.to_i
# 		elsif arg > r_n
# 			puts "guess lower than #{arg}"
# 			arg = gets.chomp.to_i
# 		  end
# 		end 
# 		puts "good guess, #{r_n} is correct"
# 	end 

# numChecker(guess, rand_num)

# ----------- ASCCI Art -----------
# puts "What character do you want to make the pyramid out of?"
# character = gets.chomp

# puts "How many rows of #{character}'s do you want?"
# row_count = gets.chomp.to_i

# counter = 1

# for i in 1..row_count
#     puts (character * counter).center(row_count*2)
#     counter += 2
# end 

#triangle(row_count)


# FANCY TRIANGLE (that i found online)
# def sierpinski_triangle(n)
#   triangle = ["*"]
#   n.times do |i|
#     sp = " " * (2**i)
#     triangle = triangle.collect {|x| sp + x + sp} +
#                triangle.collect {|x| x + " " + x}
#   end
#   triangle
# end
 
# puts sierpinski_triangle(4)

# ----------- REVERSE A STRING -----------

def reverse_in_place

puts "Enter your string"
str = gets.chomp.to_s
mid = str.length/2

(0...mid).each do |index| #0..mid is a range - we are moving through a range of numbers 
  str[index], str[-index-1] = str[-index-1], str[index]  
  # -index is a negative index, meaning you begin from the end of the string and move left   
  # you must do a full swap for the change to stick 
  # Will change the array within our loop: str[0], str[-1] = str[-1], str[0]
  # Does not change array within loop: str[0] = str[-1]
  end
    puts str
end

reverse_in_place

