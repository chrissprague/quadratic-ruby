def main
	if ARGV.length != 3
		puts "Usage: quad.rb a b c"
		exit
	end
	ARGV.each do |a|
		puts "Argument: #{a}"
	end
end
if __FILE__ == $0
	main()
end
