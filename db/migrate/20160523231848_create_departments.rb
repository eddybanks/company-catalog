class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.text :location
      t.integer :number
      t.text :description

      t.timestamps null: false
    end
  end
end
