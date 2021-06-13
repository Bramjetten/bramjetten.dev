# This migration comes from spina_pro (originally 3)
class CreateSpinaProInboxes < ActiveRecord::Migration[6.1]
  def change
    create_table :spina_pro_inboxes do |t|
      t.string :name, null: false, unique: true
      t.string :label, null: false
      t.string :forward_email
      t.integer :unread_count, default: 0, null: false
      t.timestamps
    end
  end
end
