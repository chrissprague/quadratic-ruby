# quadratic program in ruby to find x values
=begin
the quadtratic formula is:
	( -b (+/-) sqrt(b**2 - 4*a*c) ) / ( 2*a )

this will give us 0, 1, or 2 values for x (usually 2,) given:
to use this formula, the function MUST be in the form
	a(x**2) + b(x) + c = 0

author: Christopher Sprague
=end
def main
	if ARGV.length != 3
		puts "Usage: quad.rb a b c"
		exit
	end
	validate(ARGV[0], ARGV[1], ARGV[2]) # erroneous input checking
	ARGV.each do |a|
		puts "Argument: #{a}"
	end
end
def validate(a, b, c)
	if a == "#{0}" # among other things, it's not really a quadratic if a == 0
		puts "Error: \"a\" value must be non-zero"
		exit
	end
	ai = ARGV[0].to_i
	bi = ARGV[1].to_i
	ci = ARGV[2].to_i
	thing_under_the_root = ( ( bi**2 ) - 4 * ai * ci )
	# I'm sure there is a legitimate name for this lol
	if thing_under_the_root < 0
		puts "Error: solution(s) are non-real numbers"
		exit
	end
end
if __FILE__ == $0
	main()
end







