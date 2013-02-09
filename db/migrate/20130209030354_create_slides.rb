class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :name
      t.integer :order
      t.timestamps
    end
  end
end
