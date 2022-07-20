class CreateDesingers < ActiveRecord::Migration[7.0]
  def change
    create_table :desingers do |t|
      t.string :name, null:false
      t.string :email, null:false
      t.string :passwort

      t.timestamps
      t.index :name, unique:true
      t.index :email, unique:true
    end
  end
end
