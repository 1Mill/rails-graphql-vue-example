module Types
  class QueryType < Types::BaseObject
		field :post, PostType, null: true do
			description 'Find a post by ID or title'

			argument :id, ID, required: true
		end

		def post(id:)
			Post.find(id)
		end
  end
end
