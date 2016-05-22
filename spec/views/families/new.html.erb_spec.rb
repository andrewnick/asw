require 'rails_helper'

RSpec.describe "families/new", type: :view do
  before(:each) do
    assign(:family, Family.new(
      :family_name => "MyString"
    ))
  end

  it "renders new family form" do
    render

    assert_select "form[action=?][method=?]", families_path, "post" do

      assert_select "input#family_family_name[name=?]", "family[family_name]"
    end
  end
end
