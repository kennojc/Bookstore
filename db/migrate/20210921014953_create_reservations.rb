class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.boolean :reserved
      t.references :user,  foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
