FactoryBot.define do
	factory :blog do
		# ! Only include the minimum attributes to create the model.
		title { "My blog title" }
		slug { "My blog slug" }

		trait :seed do
			content { ['Content', 'Body', 'Something', 'Else', nil].sample }
			sequence(:title) { |n| "Some title numbered #{n}" }
			sequence(:slug) { |n| "TODO-slug-#{n}"}
		end
	end
end
