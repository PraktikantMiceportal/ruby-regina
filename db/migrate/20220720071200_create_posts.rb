class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :titel, null:false
      t.string :text, null:true
      t.string :fotourl, null:true
      t.references :desinger, null:false, foreign_key:true

      t.timestamps
    end
  end
end
