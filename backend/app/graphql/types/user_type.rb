module Types
  class UserType < Types::BaseObject
		description 'A user of the application'

    field :id, ID, null: false
    field :name, String, null: true
    field :age, Integer, null: true

    field :posts, [Types::PostType], null: false
		field :comments, [Types::CommentType], null: false
  end
end
