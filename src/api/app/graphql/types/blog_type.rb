module Types
	class BlogType < Types::BaseObject
		field :content, String, null: true
		field :id, ID, null: false
		field :title, String, null: false
		field :slug, String, null: false
	end
end
