require 'rails_helper'

RSpec.describe "players/show", :type => :view do
  before(:each) do
    @player = assign(:player, Player.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :address => "Address",
      :phone => "Phone",
      :email => "Email",
      :position => "Position",
      :best_foot => "Best Foot",
      :youth_player => "Youth Player",
      :seasons => "",
      :seasons_first_team => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Best Foot/)
    expect(rendered).to match(/Youth Player/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
