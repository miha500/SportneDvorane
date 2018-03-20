class AddHallToField < ActiveRecord::Migration
  def change
    add_reference :fields, :hall, index: true, foreign_key: true
  end
end
