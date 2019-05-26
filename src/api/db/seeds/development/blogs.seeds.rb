puts 'START blogs'

FactoryBot.create_list(
	:blog, 20, :seed
)

puts 'END blogs'
