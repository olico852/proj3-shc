class CreateFrequencies < ActiveRecord::Migration[5.0]
  def change
    create_table :frequencies do |t|
      t.string :name
      t.references :occurences, polymorphic:true, index: true
      t.timestamps
    end
  end
end
