print "This is a F-to-C and C-to-F converter. What temperature would you like to convert? "
string_result = gets.chomp
number = /\d+/.match(string_result)
numberi = number[0].to_i
converter = /[A-Za-z]+/.match(string_result)
result = Object.new

def result.c2f(c)
	c * 9.0 / 5 + 32
end

def result.f2c(f)
	(f - 32) * 5 / 9.0
end

if converter[0].include? "f" 
	puts "#{numberi} farenheit is equal to #{result.f2c(numberi)} Celsius"
elsif converter[0].include? "c"
	puts "#{numberi} celsius is equal to #{result.c2f(numberi)} Farenheit"
else 
	puts "Please enter a temperature either in celsius or in farenheit"
end

