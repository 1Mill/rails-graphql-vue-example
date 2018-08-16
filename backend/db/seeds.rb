3.times do |n|
	Post.create(
		:title => "Post #{n}"
	)
end
