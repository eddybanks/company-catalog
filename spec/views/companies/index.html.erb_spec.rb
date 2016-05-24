require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :name => "Name",
        :industry => "Industry",
        :directors => "MyText",
        :registered => false,
        :address => "MyText",
        :email => "Email"
      ),
      Company.create!(
        :name => "Name",
        :industry => "Industry",
        :directors => "MyText",
        :registered => false,
        :address => "MyText",
        :email => "Email"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Industry".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
