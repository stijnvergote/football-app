require 'rails_helper'

RSpec.describe "players/new", :type => :view do
  before(:each) do
    assign(:player, Player.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :position => "MyString",
      :best_foot => "MyString",
      :youth_player => "MyString",
      :seasons => "",
      :seasons_first_team => ""
    ))
  end

  it "renders new player form" do
    render

    assert_select "form[action=?][method=?]", players_path, "post" do

      assert_select "input#player_first_name[name=?]", "player[first_name]"

      assert_select "input#player_last_name[name=?]", "player[last_name]"

      assert_select "input#player_address[name=?]", "player[address]"

      assert_select "input#player_phone[name=?]", "player[phone]"

      assert_select "input#player_email[name=?]", "player[email]"

      assert_select "input#player_position[name=?]", "player[position]"

      assert_select "input#player_best_foot[name=?]", "player[best_foot]"

      assert_select "input#player_youth_player[name=?]", "player[youth_player]"

      assert_select "input#player_seasons[name=?]", "player[seasons]"

      assert_select "input#player_seasons_first_team[name=?]", "player[seasons_first_team]"
    end
  end
end
