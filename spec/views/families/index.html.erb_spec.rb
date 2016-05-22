require 'rails_helper'

RSpec.describe "families/index", type: :view do
  before(:each) do
    assign(:families, [
      Family.create!(
        :family_name => "Family Name"
      ),
      Family.create!(
        :family_name => "Family Name"
      )
    ])
  end

  it "renders a list of families" do
    render
    assert_select "tr>td", :text => "Family Name".to_s, :count => 2
  end
end
