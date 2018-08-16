module Types
  class CommentType < Types::BaseObject
		description 'Response by a user on a post'

    field :id, ID, null: false
    field :body, String, null: false

    field :author, Types::UserType, null: false
    field :post, Types::PostType, null: false
  end
end
