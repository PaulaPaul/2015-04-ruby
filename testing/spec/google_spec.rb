require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'spec_helper.rb'

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, {debug: false})
end
  
Capybara.default_driver = :poltergeist
Capybara.app_host = 'http://www.google.com'

describe "Searching for the first programmer" do
  it "allows searches for early pioneers in programming" do
    visit ""
    fill_in('q', :with => "the first programmer")
    click_button("Google Search")
    expect(page).to have_content("Ada Lovelace")
    save_screenshot('the_first_programmer.png')
  end
end
