module Types
  class Objects::CommentType < Types::BaseObject
		description 'Response by a user on a post'

    field :id, ID, null: false
    field :body, String, null: false

    field :author, Objects::UserType, null: false
    field :post, Objects::PostType, null: false
  end
end
