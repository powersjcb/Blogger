class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, null: false

      t.timestamps null: false
    end

    add_index :tags, :name, unique: true

    add_foreign_key(
      :taggings, :tags,
      column: :tag_id,
      primary_key: :id,
      on_delete: :cascade
    )

    add_foreign_key(
      :taggings, :articles, # this_table, other_table
      column: :article_id,  # this_table's column, foreign_key
      priamary_key: :id,    # other table's priamary_key
      on_delete: :cascade   # dependent: :destroy at db level
    )
  end
end
