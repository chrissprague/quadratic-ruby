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
	quadratic(ARGV[0], ARGV[1], ARGV[2])
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

def quadratic(a, b, c)
	sol1, sol2 = 0
	a,b,c = a.to_i, b.to_i, c.to_i
	sol1 = ( ( -b + (b**2 - 4*a*c)**0.5 ) / ( 2*a ) )
	sol2 = ( ( -b - (b**2 - 4*a*c)**0.5 ) / ( 2*a ) )
	if sol1 == sol2
		puts "1 real solution"
		puts "#{sol1}"
		return 1
	end
	puts "2 real solutions"
	puts "#{sol1}"
	puts "#{sol2}"
	return 2
end

if __FILE__ == $0
	main()
end







