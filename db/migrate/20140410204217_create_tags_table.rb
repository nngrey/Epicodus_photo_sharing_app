class CreateTagsTable < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.column :photo_id, :int
      t.column :user_id, :int

      t.timestamps
    end
    add_column :photos, :user_id, :int
  end
end
