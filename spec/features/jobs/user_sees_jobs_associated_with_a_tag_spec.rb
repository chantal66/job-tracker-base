# require 'rails_helper'
#
# describe "User can see tags associated with a job" do
#   scenario "a user can see tags associated with a job" do
#     skip
#     company = Company.create!(name: "ESPN")
#     job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
#
#     visit company_jobs_path(company, job)
#
#     expect(page).to have_content("Developer")
#
#     # visit company_job_path
#
#     expect(page).to have_content('Software')
#     expect(page).to have_content('Good-Location')
#
#   end
# end
