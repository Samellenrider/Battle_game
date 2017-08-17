require 'spec_helper'

feature Battle do
  scenario "gives expected message" do
    visit('/')
      expect(page).to have_content 'Testing infrastructure working!'

  end

  scenario "players add names in form" do
    expect(page).to eq(name)
end
