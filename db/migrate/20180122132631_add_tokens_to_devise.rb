class AddTokensToDevise < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string
    add_column :users, :tokens, :string
    add_column :users, :image, :string
    add_column :users, :uid, :string
    add_column :users, :authentication_token, :string
    add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end
end
