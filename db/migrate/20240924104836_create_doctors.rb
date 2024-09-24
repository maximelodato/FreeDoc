class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      
      t.string :zip_code, null: false

      t.timestamps
    end
  end
end