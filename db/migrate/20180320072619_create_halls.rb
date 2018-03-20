class CreateHalls < ActiveRecord::Migration
  def change
    create_table :halls do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
