rand(3..5).to_i.times do |n|
	User.create(
		:name => Faker::HarryPotter.character,
		:age => [nil, rand(5..100).to_i].sample,
	)
end

3.times do |n|
	Post.create(
		:title => "Post #{n}"
	)
end
