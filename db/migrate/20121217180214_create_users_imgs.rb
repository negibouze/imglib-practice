class CreateUsersImgs < ActiveRecord::Migration
  def change
    create_table :users_imgs, id: false do |t|
      t.references :user
      t.references :img
    end
    add_index :users_imgs, :user_id
    add_index :users_imgs, :img_id
  end
end
