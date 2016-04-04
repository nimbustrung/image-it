class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :user_id
      t.string :name
      t.string :title
      t.string :detail
      t.string :file

      t.timestamps null: false
    end
  end
end