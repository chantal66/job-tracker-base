require 'rails_helper'

RSpec.describe "User can see office locations on a specific company" do
  scenario "User can see office locations on a specific company" do
    company = Company.create!(name: "ESPN")
    location = company.locations.create!(location: 'Denver')

    visit company_path(company)

    expect(page).to have_current_path(company_path(company))
    expect(page).to have_content(company.name)

    expect(page).to have_content(location.location)
  end

  scenario "User can see number of office locations on a specific company" do
    company = Company.create!(name: "ESPN")
    location = company.locations.create!(location: 'Denver')
    location_1= company.locations.create!(location: 'Guayaquil')
    location_2 = company.locations.create!(location: 'Quito')

    visit company_path(company)

    expect(page).to have_current_path(company_path(company))
    expect(page).to have_content(company.name)

    expect(page).to have_content(location.location)
    expect(page).to have_content(1)
    expect(page).to have_content(location_1.location)
    expect(page).to have_content(1)
    expect(page).to have_content(location_2.location)
    expect(page).to have_content(1)
  end
end