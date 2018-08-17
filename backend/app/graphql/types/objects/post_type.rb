module Types
  class Objects::PostType < Types::BaseObject
		description 'A post authored by a user'

    field :id, ID, null: false
    field :title, String, null: false
		field :body, String, null: false

    field :author, Objects::UserType, null: false
		field :comments, [Objects::CommentType], null: false
  end
end
