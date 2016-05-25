class AddColumnsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :registration_number, :string
    add_column :companies, :category, :string
  end
end
