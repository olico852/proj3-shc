class CreateConditions < ActiveRecord::Migration[5.0]
  def change
    create_table :conditions do |t|
      t.string :name
      t.references :sconditions, polymorphic:true, index: true

      t.timestamps
    end
  end
end
