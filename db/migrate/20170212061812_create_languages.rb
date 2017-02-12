class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :name
      t.references :sglangs, polymorphic:true, index: true
      t.timestamps
    end
  end
end
