class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :contact_info

      t.timestamps
    end
  end
end
