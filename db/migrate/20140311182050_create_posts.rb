class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.text :content, null: false
      t.boolean :liked, null: false, default: false
    end
  end
end
