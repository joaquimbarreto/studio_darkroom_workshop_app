class CreatePhotographers < ActiveRecord::Migration[5.2]
  def change
    create_table :photographers do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :telephone_number
      t.integer :age
      t.text :bio
      t.string :specialty
      t.boolean :is_admin?

      t.timestamps
    end
  end
end
