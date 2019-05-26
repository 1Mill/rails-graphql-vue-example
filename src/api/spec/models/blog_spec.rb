require 'rails_helper'

RSpec.describe Blog, type: :model do
	it 'has a valid factory' do
		expect(create(:blog).persisted?).to equal(true)
	end

	it 'has a valid seed' do
		expect(create(:blog, :seed).persisted?).to equal(true)
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

	describe '#slug' do
		context 'when #slug is not present' do
			context 'AND when #title is not present' do
				it 'returns invalid' do
					expect{ create(:blog, :title => nil, :slug => nil) }.to raise_error
				end
			end
			context 'AND when #title is present' do
				it 'returns valid' do
					expect(create(:blog, :title => 'Some title', :slug => nil).persisted?).to eq(true)
				end

				it 'returns formatted #title' do
					title = 'Some random title'
					expected = 'some-random-title'

					blog = create(:blog, :title => title, :slug => nil)

					expect(blog.slug).to eq(expected)
				end
			end
		end
		context 'when #slug is present' do
			it 'returns valid' do
				expect(create(:blog, :slug => 'Some slug').persisted?).to eq(true)
			end

			it 'returns the input #slug value' do
				slug = 'some-random-slug'

				blog = create(:blog, :slug => slug)

				expect(blog.slug).to eq(slug)
			end
		end

		context 'when #slug is not unique' do
			it 'returns invalid' do
				slug = 'some-blog-slug'
				blog = create(:blog, :slug => slug)

				expect{ create(:blog, :slug => slug) }.to raise_error
			end
		end
		context 'when #slug is unique' do
			it 'returns valid' do
				expect(create(:blog, :slug => 'Some unique slug').persisted?).to eq(true)
			end
		end
	end
end
