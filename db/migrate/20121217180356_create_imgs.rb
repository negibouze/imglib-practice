class CreateImgs < ActiveRecord::Migration
  def change
    create_table :imgs do |t|
      t.string :name
      t.string :ctype
      t.binary :image

      t.timestamps
    end
  end
end
