class AddColumToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :photo_id, :string
  end
end
