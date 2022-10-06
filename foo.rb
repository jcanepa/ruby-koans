hash = Hash.new([])

hash[:one] << "uno"
hash[:two] << "dos"

puts hash[:one]
puts hash[:two]
puts hash[:three]

puts hash.inspect