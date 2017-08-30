class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :post_id
      # t.references :comment, foreign_key: true
      t.string :photo
      t.text :content

      t.timestamps
    end
  end
end
