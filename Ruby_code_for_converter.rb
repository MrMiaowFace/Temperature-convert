
print "This is a F-to-C and C-to-F converter. What temperature would you like to convert? "
string_result = gets.chomp
prompt = "> "

while /[A-Za-z]+/.match(string_result) == nil
	print "Please enter a valid temperature either in Celsius or farenheit"
	puts prompt
	string_result = gets.chomp
end
while /\d+/.match(string_result) == nil
	print "Please enter a valid temperature either in Celsius or farenheit"
	puts prompt
	string_result = gets.chomp
end

number = /\d+/.match(string_result)
numberi = number[0].to_i
converter = /[A-Za-z]+/.match(string_result)
result = Object.new


def result.c2f(c)
	c * 9.0 / 5.0 + 32.0
end

def result.f2c(f)
	(f - 32.0) * 5.0 / 9.0
end


if converter[0].include? "f" || "F"
  puts "#{numberi} farenheit is equal to #{result.f2c(numberi)} Celsius"
else
  puts "#{numberi} celsius is equal to #{result.c2f(numberi)} Farenheit"
end

