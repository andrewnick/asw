require 'rails_helper'

RSpec.describe "families/edit", type: :view do
  before(:each) do
    @family = assign(:family, Family.create!(
      :family_name => "MyString"
    ))
  end

  it "renders the edit family form" do
    render

    assert_select "form[action=?][method=?]", family_path(@family), "post" do

      assert_select "input#family_family_name[name=?]", "family[family_name]"
    end
  end
end
