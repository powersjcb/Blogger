class AddNotNullConditionsToComments < ActiveRecord::Migration
  def change
    change_column :comments, :author_name, :string, null: false
    change_column :comments, :article_id, :integer, null: false
    change_column :comments, :body, :text, null: false
  end
end
