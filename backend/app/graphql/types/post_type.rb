module Types
  class PostType < Types::BaseObject
		description 'A post'

		field :id, ID, null: false
    field :title, String, null: true
  end
end
