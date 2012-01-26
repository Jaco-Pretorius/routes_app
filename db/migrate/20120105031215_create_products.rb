class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :category
      t.boolean :duplicate, :default => false
      t.integer :duplicate_of

      t.timestamps
    end
  end
end
