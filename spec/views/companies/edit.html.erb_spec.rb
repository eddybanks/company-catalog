require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "MyString",
      :industry => "MyString",
      :directors => "MyText",
      :registered => false,
      :address => "MyText",
      :email => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_industry[name=?]", "company[industry]"

      assert_select "textarea#company_directors[name=?]", "company[directors]"

      assert_select "input#company_registered[name=?]", "company[registered]"

      assert_select "textarea#company_address[name=?]", "company[address]"

      assert_select "input#company_email[name=?]", "company[email]"
    end
  end
end
