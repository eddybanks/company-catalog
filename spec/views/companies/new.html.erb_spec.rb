require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      :name => "MyString",
      :industry => "MyString",
      :directors => "MyText",
      :registered => false,
      :address => "MyText",
      :email => "MyString"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_industry[name=?]", "company[industry]"

      assert_select "textarea#company_directors[name=?]", "company[directors]"

      assert_select "input#company_registered[name=?]", "company[registered]"

      assert_select "textarea#company_address[name=?]", "company[address]"

      assert_select "input#company_email[name=?]", "company[email]"
    end
  end
end
