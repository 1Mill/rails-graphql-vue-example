class AppSchema < GraphQL::Schema
	# Queries
	# query(Types::QueryType)
	query(Types::Queries::UserQuery)

	# Mutations
  mutation(Types::MutationType)
end
