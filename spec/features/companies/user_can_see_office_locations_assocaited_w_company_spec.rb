require 'rails_helper'

RSpec.describe "User can see office locations on a specific company" do
  scenario "User can see office locations on a specific company" do
    company = Company.create!(name: "ESPN")
    location = company.locations.create!(location: 'Denver')

    visit company_path(company)

    # binding.pry
    expect(page).to have_current_path(company_path(company))
    expect(page).to have_content(company.name)

    # save_and_open_page
    expect(page).to have_content(location.location)
  end
end