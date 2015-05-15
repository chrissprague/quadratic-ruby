quadratic-ruby
==============

**quadratic-ruby** is a WIP ruby program which can be used to evaluate the quadratic formula for given values of `a`, `b`, and `c`. You can specify the numbers as three arguments to the program:
    
    ./quad.rb [a] [b] [c]

or via a file containing lines of the format:

    a b c
    d e f
    [...]

(etc.) by doing:

    ./quad.rb -f [filename]

<hr>

Inspiration:
 * learn (more) about the Ruby programming language
 * my chemistry course has been discussing chemical equilibria in depth,
specifically K<sub>c</sub>, K<sub>p</sub>, K<sub>eq</sub>, K<sub>w</sub>, K<sub>a</sub>, and K<sub>b</sub>, and problems that fall under
these categories often involve the use of the quadratic formula, so
why not kill two birds with one stone?
