12.times do |n|
	Blog.first_or_create(
		:content => "Random content to add to blog #{n}",
		:title => "Blog title #{n}",
		:slug => "TODO"
	)
end
