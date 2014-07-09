require 'rails_helper'

RSpec.describe "players/index", :type => :view do
  before(:each) do
    assign(:players, [
      Player.create!(
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
      ),
      Player.create!(
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
      )
    ])
  end

  it "renders a list of players" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Best Foot".to_s, :count => 2
    assert_select "tr>td", :text => "Youth Player".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
