require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :nationality => "Nationality",
        :address => "MyText",
        :gender => "Gender",
        :phone_number => "Phone Number",
        :manager_flag => false,
        :end_date => "End Date",
        :department => nil
      ),
      Employee.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :nationality => "Nationality",
        :address => "MyText",
        :gender => "Gender",
        :phone_number => "Phone Number",
        :manager_flag => false,
        :end_date => "End Date",
        :department => nil
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Nationality".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "End Date".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
