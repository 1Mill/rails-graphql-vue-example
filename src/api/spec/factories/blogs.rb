FactoryBot.define do
	factory :blog do
		# ! Only include the minimum attributes to create the model.
		title { 'My blog title' }
		slug { 'my-blog-title' }
	end
end
