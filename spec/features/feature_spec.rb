require 'spec_helper'

 feature Battle do
#   scenario "gives expected message" do
#     visit('/')
#       expect(page).to have_content 'Testing infrastructure working!'
#
#  end
#
#  scenario "players add names in form" do
#    expect(page).to eq(name)
# end
# end
  scenario "displays players hit points" do
    sign_in_and_play
    expect(page).to have_content('Sam HP:100 vs Will HP:100')
  end

end
