class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.date :start_date
      t.string :industry
      t.text :directors
      t.boolean :registered
      t.text :address
      t.string :email

      t.timestamps null: false
    end
  end
end
