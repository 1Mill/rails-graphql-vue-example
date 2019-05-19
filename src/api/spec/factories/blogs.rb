FactoryBot.define do
	factory :blog do
		# ! Only include the minimum attributes to create the model.
		title { "My blog title" }
		slug { "My blog slug" }

		trait :seed do
			content { [Faker::Lorem.paragraph(rand(1..8)), nil].sample }
			sequence(:title) { |n| "#{Faker::Appliance.brand} - #{Faker::Appliance.equipment} v1.#{n}" }
			sequence(:slug) { |n| "#{title}" }
		end
	end
end
