class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :state
      t.float :total
      t.references :reservation, foreign_key: true

      t.timestamps
    end
  end
end
