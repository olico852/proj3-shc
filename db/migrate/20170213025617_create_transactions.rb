class CreateTransactions < ActiveRecord::Migration[5.0]
  def change

    create_table :transactions do |t|
      t.belongs_to :fammember, foreign_key: true
      t.belongs_to :caregiver, foreign_key: true
      t.belongs_to :patient, foreign_key: true
      t.boolean :pending, :default => false
      t.boolean :approved, :default => false
      t.boolean :cancelled, :default => false
      t.boolean :concluded, :default => false
      t.date :start_date

      t.timestamps
    end
  end
end
