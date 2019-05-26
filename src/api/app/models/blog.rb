class Blog < ApplicationRecord
	# ! Validations occure on the database level to prevent race
	# ! conditions. Check out the migration file for more details.

	before_save :set_slug

	private def set_slug
		self.slug ||= self.title.parameterize
	end
end
