RSpec.configure do |config|
	config.before(:suite) do
		DatabaseCleaner.clean_with(:truncation)
	end
end
