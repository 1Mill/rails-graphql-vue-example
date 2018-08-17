class AppSchema < GraphQL::Schema
	# Queries
	query(Types::QueryType)
	query(Types::Query::UserQuery)

	# Mutations
  mutation(Types::MutationType)
end
