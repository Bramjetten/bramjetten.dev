# This migration comes from spina_pro (originally 1)
class CreateSpinaProNotFoundErrors < ActiveRecord::Migration[6.1]
  def change
    create_table :spina_pro_not_found_errors do |t|
      t.string :path, default: "/", null: false
      t.integer :visits, default: 0, null: false
      t.datetime :last_visited, null: false
      t.string :request_url
      t.string :referer
      t.boolean :ignored, default: false, null: false

      t.timestamps
    end
  end
end
