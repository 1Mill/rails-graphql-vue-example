module Types
  class PostType < Types::BaseObject
		description 'A post authored by a user'

    field :id, ID, null: false
    field :title, String, null: false
    field :author, Types::UserType, null: false
  end
end
