module Types
  class Objects::UserType < Types::BaseObject
		description 'A user of the web application'

    field :id, ID, null: false
    field :name, String, null: false
    field :age, Integer, null: true

    field :posts, [Objects::PostType], null: false
    field :comments, [Objects::CommentType], null: false
  end
end
