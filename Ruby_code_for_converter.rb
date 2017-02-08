print "This is a F-to-C and C-to-F converter. What temperature would you like to convert? "
prompt = "> "
string_result = gets.chomp
number = /\d+/.match(string_result) #finds temperature
numberi = number[0].to_i
result = Object.new

def result.c2f(c)
	c * 9.0 / 5.0 + 32.0
end

def result.f2c(f)
	(f - 32.0) * 5.0 / 9.0
end


while converter = /[A-Za-z]+/.match(string_result) #finds string and loop makes sure either f or c is chosen
	if converter[0].include? "f" || "F"
	  puts "#{numberi} farenheit is equal to #{result.f2c(numberi)} Celsius"
	break
	elsif converter[0].include? "c" || "C"
	  puts "#{numberi} celsius is equal to #{result.c2f(numberi)} Farenheit"
	break
	else 
	  puts "Please enter a temperature either in celsius or in farenheit"
	  print prompt
	end
end

