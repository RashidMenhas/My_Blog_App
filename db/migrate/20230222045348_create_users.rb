class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo, default: 'https://icon-library.com/images/default-user-icon/default-user-icon-3.jpg'
      t.text :bio
      t.integer :posts_counter, default: 0

      t.timestamps
    end
  end
end
