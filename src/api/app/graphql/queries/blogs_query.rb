module Queries
	class BlogsQuery < BaseQuery
		type [Types::BlogType], null: false

		def resolve
			Blog.all
		end
	end
end
