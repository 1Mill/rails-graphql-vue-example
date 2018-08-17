module Types
	class Queries::PostQuery < Types::QueryType
			field :post, Objects::PostType, null: true do
				description 'Find a post with a given ID'

				argument :id, ID, required: true
			end

			def post(id:)
				Post.find(id)
			end
	end
end
