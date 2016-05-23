require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Nationality/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/End Date/)
    expect(rendered).to match(//)
  end
end
