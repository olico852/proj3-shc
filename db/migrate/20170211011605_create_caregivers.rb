class CreateCaregivers < ActiveRecord::Migration[5.0]
  def change
    create_table :caregivers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :contact
      t.string :email
      t.string :password_digest
      t.string :gender
      t.string :certification
      t.integer :yearsofexperience
      t.text :experiencedescription
      t.string :photo

      t.timestamps
    end
  end
end
