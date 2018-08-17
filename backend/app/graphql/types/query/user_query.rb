module Types
	class Query::UserQuery < QueryType
		# Get the first X users.
		field :users, [UserType], null: false do
			description 'Retrieve users'

			argument :limit, Integer, required: false, default_value: 7, prepare: ->(limit, ctx) {
				[limit, 7].min
			}
		end

		def users(limit:)
			User.limit(limit)
		end

		# Get a specific user
		field :user, UserType, null: false do
			description 'Retrieve a single user by their id'

			argument :id, ID, required: true
		end

		def user(id:)
			User.find(id)
		end
	end
end
