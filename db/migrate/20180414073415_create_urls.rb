class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :main_url
      t.string :shortener_url

      t.timestamps null: false
    end
  end
end
