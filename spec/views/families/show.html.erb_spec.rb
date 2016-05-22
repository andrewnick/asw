require 'rails_helper'

RSpec.describe "families/show", type: :view do
  before(:each) do
    @family = assign(:family, Family.create!(
      :family_name => "Family Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Family Name/)
  end
end
