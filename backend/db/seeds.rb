puts 'Start seeding'

10.times do
	User.create(
		:name => Faker::HarryPotter.character,
		:age => [nil, rand(5..100).to_i].sample,
	)
end

User.find_each do |user|
	rand(0..4).to_i.times do
		user.posts.create(
			:title => Faker::MichaelScott.quote,
			:body => Faker::Markdown.sandwich(5)
		)
	end
end

10.times do
	user = User.all.sample
	post = Post.all.sample

	user.comments.create(
		:post => post,
		:body => Faker::Markdown.random
	)
end

puts 'Finished seeding'
