require('capybara/rspec')
require('./application')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('most common word count', {:type => :feature}) do
  it('searches a sentence for most common word count') do
    visit('/')
    fill_in('sentence', :with => 'hello cat' )
    fill_in('word', :with => 'cat')
    click_button('Submit')
    expect(page).to have_content(1)
  end
end
