class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.float :price
      t.integer :code

      t.timestamps
    end
  end
end
