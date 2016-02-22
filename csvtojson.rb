require 'csv2json'
File.open('test.csv', 'r') do |input|
  File.open('output1.json', 'w') do |output|
    CSV2JSON.parse(input, output)
  end
end
=begin
	a b c d e
u1	1 2 1 2 3 
u2	2 3	3 2 1


[
u1 => {
		a => 1
		b => 2
		c => 1
		d => 2
		e => 3
	},
u2 => {
		a => 2
		b => 3
		c => 3
		d => 2
		e => 1
	}
]
=end