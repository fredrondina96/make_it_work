require 'rails_helper'

RSpec.describe 'when I visit the contestants index page', type: :feature do
  it 'I see a list of names of all the contestants and their projects' do
  jimbo = Contestant.create!(name: "Jimbo", age:"44", hometown: "Mobile", years_of_experience: 24)
  jimbo.projects.create(name: "Trash Chic", material: "Trash Bags")
  recycled_material_challenge = Challenge.create(theme: "Recycled Material", project_budget: 1000)
  recycled_material_challenge.projects.create(name: "News Chic", material: "Newspaper")
  visit "/contestants/"
  expect(page).to have_content(jimbo.name)
  expect(page).to have_content(jimbo.projects.first.name)

# binding.pry
  end
end
