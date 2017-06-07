require 'rails_helper'

describe "User can see tags associated with a job" do
  scenario "a user can see tags associated with a job" do
    company = Company.create!(name: "ESPN")
    job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    tag = job.tags.create!(title: "Software")
    tag1 = job.tags.create!(title: "Good-Location")

    visit company_job_path(company, job)

    expect(page).to have_content(job.title)

    expect(page).to have_content(tag.title)
    expect(page).to have_content(tag1.title)
  end

  scenario "a user can see number of tags associated with a job" do
    company = Company.create!(name: "ESPN")
    job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    tag = job.tags.create!(title: "Software")
    tag1 = job.tags.create!(title: "Good-Location")

    visit company_job_path(company, job)

    expect(page).to have_content(company.name)
    expect(page).to have_content(job.title)
    expect(page).to have_content(tag.title)
    expect(page).to have_content(tag1.title)
    expect(page).to have_content(tag1.count)

  end
end
