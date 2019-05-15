require 'rails_helper'

RSpec.describe Blog, type: :model do
	it 'has a valid factory' do
		expect(create(:blog).persisted?).to equal(true)
	end

	describe '#title' do
		context 'when #title is not present' do
			it 'returns invalid' do
				expect{ create(:blog, :title => nil) }.to raise_error
			end
		end
		context 'when #title is present' do
			it 'returns valid' do
				expect(create(:blog, :title => 'Some title').persisted?).to eq(true)
			end
		end
	end
end
