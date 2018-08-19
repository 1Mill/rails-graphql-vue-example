module Types
	class Queries::CommentQuery < Types::QueryType
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
	end
end
