module Types
	class Queries::PostQuery < Types::QueryType
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
	end
end
