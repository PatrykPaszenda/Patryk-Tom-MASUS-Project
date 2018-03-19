class Fileuploads < ActiveRecord::Migration[5.0]
  def change
    create_table :fileuploads do |t|
    t.string   :name
    t.string   :attachment
  end
  end
end
