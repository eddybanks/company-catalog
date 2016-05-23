class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :nationality
      t.text :address
      t.string :gender
      t.date :birth_date
      t.string :phone_number
      t.boolean :manager_flag
      t.date :start_date
      t.string :end_date
      t.references :department, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
