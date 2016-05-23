class CreateDependents < ActiveRecord::Migration
  def change
    create_table :dependents do |t|
      t.string :name
      t.date :birthdate
      t.string :relationship
      t.string :gender
      t.string :email
      t.string :phone_number
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
