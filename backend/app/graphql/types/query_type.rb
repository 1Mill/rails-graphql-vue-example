module Types
  class QueryType < Types::BaseObject
		field :comments, [Objects::CommentType], null: false do
			description 'An array of Comments'
		end
		def comments
			Comment.all
		end

		field :comment, Objects::CommentType, null: false do
			description 'Find a Comment with a given ID'

			argument :id, ID, required: true
		end
		def comment(id:)
			Comment.find(id)
		end

		field :posts, [Objects::PostType], null: false do
			description 'An array of posts'
		end
		def posts
			Post.all
		end

		field :post, Objects::PostType, null: true do
			description 'Find a post with a given ID'

			argument :id, ID, required: true
		end
		def post(id:)
			Post.find(id)
		end

		field :users, [Objects::UserType], null: false do
			description 'Retrieve users'

			argument :limit, Integer, required: false, default_value: 7, prepare: ->(limit, ctx) {
				[limit, 7].min
			}
		end
		def users(limit:)
			User.limit(limit)
		end

		field :user, Objects::UserType, null: false do
			description 'Retrieve a single user by their id'

			argument :id, ID, required: true
		end
		def user(id:)
			User.find(id)
		end
  end
end
