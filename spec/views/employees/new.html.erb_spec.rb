require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :nationality => "MyString",
      :address => "MyText",
      :gender => "MyString",
      :phone_number => "MyString",
      :manager_flag => false,
      :end_date => "MyString",
      :department => nil
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input#employee_first_name[name=?]", "employee[first_name]"

      assert_select "input#employee_last_name[name=?]", "employee[last_name]"

      assert_select "input#employee_email[name=?]", "employee[email]"

      assert_select "input#employee_nationality[name=?]", "employee[nationality]"

      assert_select "textarea#employee_address[name=?]", "employee[address]"

      assert_select "input#employee_gender[name=?]", "employee[gender]"

      assert_select "input#employee_phone_number[name=?]", "employee[phone_number]"

      assert_select "input#employee_manager_flag[name=?]", "employee[manager_flag]"

      assert_select "input#employee_end_date[name=?]", "employee[end_date]"

      assert_select "input#employee_department_id[name=?]", "employee[department_id]"
    end
  end
end
