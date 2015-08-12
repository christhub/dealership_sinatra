require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The dealership path', {:type => :feature}) do
  it('adds a new dealership') do
    visit('/')
    click_link('ADD NEW DEALERSHIP')
    fill_in('name', :with=> "Carl's Car Emporium")
    click_button('Add Dealership')
    click_link('See Dealership List')
    expect(page).to have_content("Carl's Car Emporium")
  end
end
