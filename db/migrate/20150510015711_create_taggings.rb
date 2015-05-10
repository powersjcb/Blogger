class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :tag, null: false
      t.references :article, null: false

      t.timestamps null: false
    end

    add_index :taggings, :tag_id
    add_index :taggings, :article_id
    add_index :taggings, [:tag_id, :article_id], unique: true


  end
end
