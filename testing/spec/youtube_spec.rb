require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist' #use only for poltergeist
require 'spec_helper.rb'

# Capybara.default_driver = :selenium  
# do the above for 'visible' testing
Capybara.default_driver = :poltergeist
Capybara.app_host = 'http://youtube.com'

describe "Searching for a video about ENIAC" do
  it "allows searches for ENIAC programmers" do
    visit ""
    fill_in('search_query', :with => "ENIAC programmers")
    click_button('search-btn')
    expect(page).to have_content("Jean Jennings Bartik")

    visit ""
    fill_in('search_query', :with => "ENIAC programmers")
    click_button('search-btn')
    expect(page).to have_content("Kathleen McNulty")
  end
end

describe "Searching for a video about people who created the compiler" do
  it "allows searches for pioneers of compiler technology" do
    visit_youtube
    search_for_term("compiler pioneer")
    verify_I_see("Grace Hopper")
  end
end