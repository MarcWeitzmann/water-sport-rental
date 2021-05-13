class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :email
      t.string :phone
      t.references :user

      t.timestamps
    end
  end
end
