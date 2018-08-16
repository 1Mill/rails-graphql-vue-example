module Types
  class PostType < Types::BaseObject
		description 'An authored post'

    field :id, ID, null: false
    field :title, String, null: false
    field :author, Types::UserType, null: false
  end
end
