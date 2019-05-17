module Types
	class QueryType < Types::BaseObject
		# Add root-level fields here.
		# They will be entry points for queries on your schema.

		field :blogs,
			resolver: Queries::BlogsQuery,
			description: "A list of all blogs"
	end
end
