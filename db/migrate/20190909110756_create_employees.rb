class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :designation
      t.string :company

      t.timestamps
    end
  end
end
