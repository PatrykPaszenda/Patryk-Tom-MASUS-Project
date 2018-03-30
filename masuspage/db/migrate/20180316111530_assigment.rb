class Assigment < ActiveRecord::Migration[5.0]
  def change
    create_table :assigments do |t|
      t.string :name
      t.string :type
      t.string :group

      t.timestamps
    end
  end
end
