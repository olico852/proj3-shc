class CreateFammembers < ActiveRecord::Migration[5.0]
  def change
    create_table :fammembers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :contact
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
