require 'rails_helper'

RSpec.describe 'when I visit the project show page', type: :feature do
  it 'shows projects name and material' do
  recycled_material_challenge = Challenge.create(theme: "Recycled Material", project_budget: 1000)
  recycled_material_challenge.projects.create(name: "News Chic", material: "Newspaper")
  # binding.pry
  visit "/projects/#{recycled_material_challenge.projects.first.id}"

  expect(page).to have_content(recycled_material_challenge.projects.first.name)
  expect(page).to have_content(recycled_material_challenge.projects.first.material)
  expect(page).to have_content(recycled_material_challenge.theme)

  end
end
