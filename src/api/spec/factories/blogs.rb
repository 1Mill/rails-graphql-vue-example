FactoryBot.define do
	factory :blog do
		# ! Only include the minimum static default attributes needed to create the model.
		title { "My blog title" }

		trait :seed do
			content { [Faker::Lorem.paragraph(rand(1..8)), nil].sample }
			sequence(:title) { |n| "#{Faker::Appliance.brand} - #{Faker::Appliance.equipment} v1.#{n}" }
			slug { [Faker::Hipster.paragraphs(rand(1..2)), nil].sample }
		end
	end
end
